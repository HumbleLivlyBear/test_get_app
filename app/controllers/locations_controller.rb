# encoding: utf-8
class LocationsController < ApplicationController
  def get
   # @location = { :lat => "25.034264", :lng => "121.564064"}  # Taipei 101 
   # @location = [
   #              [:name=>"Taipei" , :lat => "25.034264", :lng => "121.564064"]
   #                [{:name=>"Yangming" , :lat => "25.157327", :lng => "121.547999"}]
   #                [{:name=>"Taroku"  , :lat => "24.156348", :lng => "121.621263"} ]
   #             ]
    @location = Locations.all
    # params = { :locations => {"name"=>"中文"} }
    #     @location = Locations.new(params[:locations])
    
    respond_to do |format|
      format.html
      format.json {
            render :json => @location.to_json
          }
    end
  end

  def index
  end
  
  def new
    @location = Locations.new
    @title = "MineMap"
  end
  
  def create
    
    if Locations.new(params[:locations]).name != nil
    @user = Locations.new(params[:locations])
    else
    @user = Locations.new(JSON.parse(params[:locations]))  
    end
    
    @user.save
    flash[:success] = "Create Data Success!"
    render 'get' 
  end
end
