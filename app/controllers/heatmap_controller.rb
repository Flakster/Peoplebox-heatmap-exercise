class HeatmapController < ApplicationController
  def index
    @result =[]
    drivers = Response.select(:driver_name).distinct
    drivers.each do |driver|
      scores = Response.joins(:employee).group(:department).where('driver_name = ?', driver.driver_name).average(:score)  
      pairs = {}
      pairs['driver'] = driver.driver_name
      pairs['scores'] = scores
      @result << pairs
    end 
    render json:@result
  end
end
