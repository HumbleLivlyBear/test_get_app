class LocationsController < ApplicationController
  def get
   # @location = { :lat => "25.034264", :lng => "121.564064"}  # Taipei 101 
   # @location = [
   #              [:name=>"Taipei" , :lat => "25.034264", :lng => "121.564064"]
   #                [{:name=>"Yangming" , :lat => "25.157327", :lng => "121.547999"}]
   #                [{:name=>"Taroku"  , :lat => "24.156348", :lng => "121.621263"} ]
   #             ]
    @location = Locations.all
    
    respond_to do |format|
      format.html
      format.json {
            render :json => @location.to_json
          }
    end
  end

end
