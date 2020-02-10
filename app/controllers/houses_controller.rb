class HousesController < ApplicationController
  before_action :set_house, only: [:edit, :update, :destroy, :show]
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
        redirect_to houses_path, flash: {success: "物件情報を作成しました"}
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if params[:back]
      render :edit
    else
      if @house.update(house_params)
        redirect_to houses_path, flash: {success: "物件情報を編集しました"}
      else
        render :edit
      end
    end
  end

  def destroy
    @house.destroy
    redirect_to houses_path, flash: {danger: "物件情報を削除しました"}
  end

  def show
  end

  private

  def house_params
    params.require(:house).permit(:name, :price, :address, :age, :comment, stations_attributes: %i(id line name take_minutes _destroy))
  end

  def set_house
    @house = House.find(params[:id])
  end

end
