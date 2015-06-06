class StudentsController < ApplicationController

  def new
    @students = Student.all
  end

  def list_students
    @students = Student.all
  end

end
