require './test/minitest_helper'
require 'dictionary'

class TestDictionary < MiniTest::Test
  def setup
    @dictionary = Dictionary.new
  end

  def test_instance
    assert_instance_of Dictionary, @dictionary
  end

  def test_find_chess_in_dictionary
    assert_equal true, @dictionary.wordlist.include?('chess')
  end
end
