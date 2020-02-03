class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
    @house = House.new
    @house.stations.build
  end

  def create
    @house = House.new(house_params)
    if params[:back]
      render :new
    else
      if @house.save
        # redirect_to houses_path
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def house_params
    params.require(:house).permit(:name, :price, :address, :age, :comment, stations_attributes: %i(id line name take_minutes))
  end

end
