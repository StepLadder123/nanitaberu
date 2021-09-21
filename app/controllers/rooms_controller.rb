class RoomsController < ApplicationController
  def index
    if user_signed_in? && current_user.room_key == ""
      redirect_to new_room_path
    end
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      user = User.find(current_user.id)
      user.room_key = @room.id
      user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :key, :rule).merge(user_id: current_user.id)
  end
end