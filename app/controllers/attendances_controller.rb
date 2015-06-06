class AttendancesController < ApplicationController
  before_action :load_students

  def new
    @attendance = Attendance.new
  end

  def create
    print attendance_params
    @attendance = Attendance.new(attendance_params)
    @student = Student.find(attendance_params[:student_id])
    redirect_to new_attendance_path, notice: "#{@student.name} attended class today."
  end


private

  def load_students
    @students = Student.all
  end

  def attendance_params
    params.require(:attendance).permit(:student_id, :present)
  end

end
