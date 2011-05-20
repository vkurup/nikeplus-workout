require 'nikeplus-workout'
require 'test/unit'

class TestNikePlusWorkout < Test::Unit::TestCase

  def setup
    fname = '2010-03-11 08;37;33.xml'
    @w = NikePlusWorkout.new(fname)
  end
  
  def test_get_time
    assert_equal(@w.time, '2010-03-11T12:28:38Z')
  end

  def test_get_duration
    assert_equal(@w.duration, '8:50')
  end

  def test_get_distance
    assert_equal(@w.distance, '1.6684')
  end

  def test_get_distance_units
    assert_equal(@w.distance_units, 'km')
  end

  def test_get_calories
    assert_equal(@w.calories, '121')
  end
end
