class RoomsController < ApplicationController
  before_action :search_room, only: [:search, :join]

  def index
    if user_signed_in?
      if current_user.waiting_room_key != nil
        redirect_to wait_rooms_path
      elsif current_user.room_key == ""
        redirect_to search_rooms_path
      end
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
  
  def search
    @rooms = Room.includes(:room)
  end
  
  def join
    @result = @r.result
  end
  
  def wait
    if current_user.waiting_room_key == nil
      search_room
      @room = @r.result
      @room.each do |room|
        current_user.waiting_room_key = room.id
      end
      current_user.save
    else
      @room = [Room.find(current_user.waiting_room_key)]
    end
  end
  
  def cancel
    current_user.waiting_room_key = ""
    current_user.save
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :key, :rule).merge(user_id: current_user.id)
  end

  def search_room
    @r = Room.ransack(params[:q])
  end
end