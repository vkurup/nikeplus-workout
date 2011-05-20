require 'rubygems'
require 'nokogiri'
require 'time'

class NikePlusWorkout
  attr_accessor :time, :duration, :distance, :distance_units, :calories

  def initialize(file)
    doc = Nokogiri::XML(open(file))
    
    timeTag = doc.css('runSummary time')[0].content
    @time = Time.parse(timeTag).getutc.iso8601

    @duration = doc.css('runSummary durationString')[0].content
    @distance = doc.css('runSummary distance')[0].content
    @distance_units = doc.css('runSummary distance')[0]['unit']
    @calories = doc.css('runSummary calories')[0].content
  end
  
end
