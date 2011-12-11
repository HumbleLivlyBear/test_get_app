class LocationsController < ApplicationController
  def get
    @location = { :lat => "25.046103", :lng => "121.565609"}   
    respond_to do |format|
      format.html
      format.json {
            render :json => @location.to_json
          }
    end
  end

end
