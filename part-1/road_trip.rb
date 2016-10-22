require 'awesome_print'

class RoadTrip

  attr_accessor :name
  attr_reader :segments

  def initialize(args = {})
    @name = args[:name]
    @segments = args[:segments]
  end

  def add_segment(new_segment)
    @segments << new_segment
  end

  def total_miles
    # @segments.reduce(0) { |sum, segment| sum += segment.miles }
    total = 0
    @segments.each do |segment|
      total += segment.miles
    end
    total
  end

  def average_miles_per_segment
    total_miles / @segments.length
  end

end


rt = RoadTrip.new(name: "THING", segments: [])



