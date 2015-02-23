require 'helper'
require 'tiny_singleton'

class TestTinySingleton < Minitest::Test
	def setup
		@fooClass=Class.new do
			prepend TinySingleton
			def initialize(foo)
				@foo=foo
			end
		end
	end

	def test_version
		version = TinySingleton.const_get('VERSION')

		assert(!version.empty?, 'should have a VERSION constant')
	end

	def test_singleton_pattern
		foo=@fooClass.new("foo")
		bar=@fooClass.new("bar")
		assert_equal foo.object_id, bar.object_id, 'Objects created by new should be identical'
	end

	def test_clone
		foo=@fooClass.new("foo")
		bar=foo.clone
		assert_equal foo.object_id, bar.object_id
	end

	def test_dup
		foo=@fooClass.new("foo")
		bar=foo.clone
		assert_equal foo.object_id, bar.object_id
	end

	def test_subclass
		barClass=Class.new(@fooClass)
		foo=@fooClass.new("foo")
		bar=@fooClass.new("bar")
		assert_equal foo.object_id, bar.object_id
	end

	def test_include
		fooClass=Class.new do
			include TinySingleton
		end
		foo=fooClass.new
		bar=fooClass.new
		assert_equal foo.object_id, bar.object_id
	end

end
