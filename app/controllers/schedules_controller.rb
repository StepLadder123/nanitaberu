class SchedulesController < ApplicationController
  def create
    @room = Room.find(current_user.room_key)
    @schedule = Schedule.new(schedule_params)
    @schedule.save
    redirect_to root_path
  end

  private

  def schedule_params
    params.require(:schedule).permit(:date, :menu_id).merge(room_id: @room.id)
  end
end
