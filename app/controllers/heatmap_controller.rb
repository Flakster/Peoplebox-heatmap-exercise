class HeatmapController < ApplicationController
  def index
    @result =[]
    pairs = {}
    drivers = Response.select(:driver_name).distinct
    drivers.each do |driver|
      scores = Response.joins(:employee).group(:department).having(:driver_name == driver).average(:score)  
      pairs['driver'] = driver.driver_name
      pairs['scores'] = scores
      @result << pairs
    end 
    render json:@result
  end
end
