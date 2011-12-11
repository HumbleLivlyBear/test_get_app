class LocationsController < ApplicationController
  def get    
    respond_to do |format|
      format.html
      format.json
  end

end
