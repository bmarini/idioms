module SomeLib
  def hello
    "Hello"
  end
end

if $0 == __FILE__
  require "test/unit"
  include SomeLib

  class TestSomeLib < Test::Unit::TestCase
    def test_hello
      assert_equal "Hello", hello
    end
  end
end