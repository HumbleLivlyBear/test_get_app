class LocationsController < ApplicationController
  def get
    @location = { :name => "Jason", :email => "example@gmail.com"}   
    respond_to do |format|
      format.html
      format.json {
            render :json => @location.to_json
          }
    end
  end

end
