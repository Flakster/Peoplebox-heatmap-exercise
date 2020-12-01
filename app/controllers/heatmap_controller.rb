class HeatmapController < ApplicationController
  def index
    @result =[]
    pairs = {}
    drivers = Response.select(:driver_name).distinct
    drivers.each do |driver|
      scores = Response.joins(:employee).group(:department).having(:driver_name == driver).average(:score)  
      pairs[driver.driver_name] = scores
    end 
    @result << pairs
    render json:@result
  end
end
