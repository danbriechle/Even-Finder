# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/even_finder'

class EvenFinderTest < Minitest::Test
  def test_it_exists
    assert_instance_of(EvenFinder, EvenFinder.new([]))
  end

  def test_it_can_find_all_the_even_numbers
    arry = [1, 2, 36, 29]

    assert_equal([2, 36], EvenFinder.new(arry).find_even)
  end

  # sad path

  def test_it_can_coerce
    arry = [1, "2", 36, 29]

    assert_equal([2, 36], EvenFinder.new(arry).find_even)
  end

  def test_it_handles_no_method_errors
    arry = [1, "2", 36, Array]

    assert_equal([2, 36], EvenFinder.new(arry).find_even)
  end

  def test_it_handles_strings
    arry = [1, "2", "Thirty Six", Array]

    assert_equal([2], EvenFinder.new(arry).find_even)
  end

  def test_it_handles_nil
    arry = [1, nil, "Thirty Six", Array]

    assert_equal([], EvenFinder.new(arry).find_even)
  end
end
