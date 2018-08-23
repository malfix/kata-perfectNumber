require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase

  test 'sum values' do
    ex = Exercise.new
    assert_equal 1, ex.sum_numbers(1)
    assert_equal 8, ex.sum_numbers(17)
    assert_equal 8, ex.sum_numbers(107)
    assert_equal 10, ex.sum_numbers(2008)
  end

  test 'first' do
    assert_equal 19, Exercise.new.get(1)
  end

  test 'second' do
    assert_equal 28, Exercise.new.get(2)
  end

  test 'third' do
    assert_equal 37, Exercise.new.get(3)
  end

  test 'nine' do
    assert_equal 91, Exercise.new.get(9)
  end

  test 'ten' do
    assert_equal 109, Exercise.new.get(10)
  end

  test 'eleven' do
    assert_equal 118, Exercise.new.get(11)
  end

  test 'twenty' do
    assert_equal 208, Exercise.new.get(20)
  end

  test 'hundred' do
    assert_equal 1423, Exercise.new.get(100)
  end

  test 'thousand' do
    assert_equal 100036, Exercise.new.get(1000)
  end

  test 'two thousand' do
    assert_equal 220033, Exercise.new.get(2000)
  end

  test 'four thousand' do
    assert_equal 1120024, Exercise.new.get(4000)
  end
end
