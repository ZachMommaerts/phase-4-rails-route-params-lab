class StudentsController < ApplicationController

  def index
    students = Student.all.where('first_name=? OR last_name=?', params[:search])
    render json: students
  end

  def show
    render json: Student.find_by_id(params[:id])
  end
end
