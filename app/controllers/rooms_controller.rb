class RoomsController < ApplicationController
  before_action :search_room, only: [:search, :join]

  def index
    if user_signed_in?
      if current_user.waiting_room_key != nil
        redirect_to wait_rooms_path
      elsif current_user.room_key == ""
        redirect_to search_rooms_path
      else
        @room = Room.find(current_user.room_key)
        redirect_to room_path(@room.id)
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
  
  def show
    @room = Room.find(current_user.room_key)
    @applies = User.where(waiting_room_key: @room.id)
    @schedule = Schedule.new
    @schedules = Schedule.where(room_id: @room.id)
    @schedules_today = Schedule.where(room_id: @room.id).where(date: Date.today)
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
  
  def approve
    delete_waiting
    @room = Room.find(current_user.room_key)
    @user.room_key = @room.id
    if @room.member1 == nil
      @room.member1 = @user.id
    elsif @room.member2 == nil
      @room.member2 = @user.id
    elsif @room.member3 == nil
      @room.member3 = @user.id
    elsif @room.member4 == nil
      @room.member4 = @user.id
    elsif @room.member5 == nil
      @room.member5 = @user.id
    elsif @room.member6 == nil
      @room.member6 = @user.id
    elsif @room.member7 == nil
      @room.member7 = @user.id
    elsif @room.member8 == nil
      @room.member8 = @user.id
    elsif @room.member9 == nil
      @room.member9 = @user.id
    end
    @user.save
    @room.save
    redirect_to root_path
  end
  
  def reject
    delete_waiting
    @user.save
    redirect_to root_path
  end
  
  private
  
  def room_params
    params.require(:room).permit(:room_name, :key, :rule).merge(user_id: current_user.id)
  end
  
  def search_room
    @r = Room.ransack(params[:q])
  end
  
  def delete_waiting
    @user = User.find(params[:id])
    @user.waiting_room_key = ""
  end
end