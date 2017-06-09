class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @unassigned_leaders = Volunteer.where(leader_type: "Location").where(leader_id: nil).all
  end

  def new
    @location = Location.new    
  end

  def create
    @location = Location.create(location_params)
    if @location.save
      flash[:success] = "<strong>#{@location.name}</strong> created."
      redirect_to locations_path
    else
      flash.now[:warning] = "somthing went wrong"
      render 'new'
    end
  end

    def edit
   @location = Location.find(params[:id])   
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      flash[:success] = "<strong>#{@location.name}</strong> was successfully updated"
      redirect_to location_path
    else
      flash.now[:warning] = "somthing went wrong"
      render 'edit'
    end
  end

  def location_params
    params.require(:location).permit(:name)
  end
end
