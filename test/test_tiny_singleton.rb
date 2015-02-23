require 'helper'
require 'tiny_singleton'

class TestTinySingleton < Minitest::Test

  def test_version
    version = TinySingleton.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end

end
