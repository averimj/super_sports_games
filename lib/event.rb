require "./lib/standard_deviation"
class Event
  include Stats

  attr_reader :name,
              :ages

  def initialize(name, ages)
    @name = name
    @ages = ages 
  end
  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    ave_age = ages.sum / (ages.count).to_f
    ave_age
  end

end
