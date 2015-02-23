require 'helper'
require 'tiny_singleton'

class TestTinySingleton < Minitest::Test

	def test_version
		version = TinySingleton.const_get('VERSION')

		assert(!version.empty?, 'should have a VERSION constant')
	end

	def test_singleton_pattern
		fooClass=Class.new do
			prepend TinySingleton
			def initialize(foo)
				@foo=foo
			end
		end
		foo=fooClass.new("foo")
		bar=fooClass.new("bar")
		assert(foo.object_id==bar.object_id, 'Objects created by new should be identical')

	end

end
