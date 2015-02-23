require 'tiny_singleton/version'

#prepend TinySingleton in a class to make it a Singleton Class
module TinySingleton
	def clone
		return self
	end
	alias dup clone

	def self.prepended(klass)
		klass.singleton_class.send :prepend, ClassMethods
	end

	module ClassMethods
		def new(*args,&b)
			singl=:@_singleton_
			if instance_variable_defined?(singl)
				return instance_variable_get(singl)
			else
				instance_variable_set(singl,super)
			end
		end
	end
end
