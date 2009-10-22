require "test/unit"
require "path/to/some_lib"

class TestSomeLib < Test::Unit::TestCase
  def setup
    # Runs before every test method
  end

  def teardown
    # Runs after every test method
  end
  
  def test_case_name
    # Methods starting with test_ are test methods
  end
end