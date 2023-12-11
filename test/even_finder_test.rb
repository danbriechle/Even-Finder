# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/even_finder'

class EvenFinderTest < Minitest::Test
  def test_it_exists
    assert_instance_of(EvenFinder, EvenFinder.new)
  end
end
