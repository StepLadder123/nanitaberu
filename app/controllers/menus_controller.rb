class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:room_id])
    @schedule = Schedule.where(menu_id: @menu.id)
  end

  private

  def menu_params
    params.require(:menu).permit(:cook_name, :memo, :image).merge(room_id: current_user.room_key)
  end
end
