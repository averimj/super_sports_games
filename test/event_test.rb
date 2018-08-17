require "minitest/autorun"
require "minitest/pride"
require "./lib/event"
require "./lib/games"

class EventTest < Minitest::Test
  def test_it_has_attributes
  event = Event.new("Curling", [24, 30, 18, 20, 41])

  assert event.name
  assert event.ages
  end

  def test_it_has_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 41, event.max_age
  end

  def test_it_has_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 18, event.min_age
  end

  def test_it_has_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 26.6, event.average_age
  end

  def test_it_has_standard_deviation
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 8.28, event.standard_deviation([24, 30, 18, 20, 41])
  end

end
