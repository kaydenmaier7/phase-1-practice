class RoadTrip

  attr_accessor :name, :segments, :new_segment

  def initialize(name)
    @name = 'Trip to SF'
    @segments = []
    @new_segment = Segment.new
  end

  def segments(new_segment)
    @segments << @new_segment
  end

  def total_miles
    @segments.each do |x|
      x.reduce(:+)
    end
  end

  def average_miles_per_segment
    total_miles / @segments.length
  end
end

