class LocationsController < ApplicationController
  def get
    @location = { :lat => "25.034264", :lng => "121.564064"}  # Taipei 101 
    respond_to do |format|
      format.html
      format.json {
            render :json => @location.to_json
          }
    end
  end

end
