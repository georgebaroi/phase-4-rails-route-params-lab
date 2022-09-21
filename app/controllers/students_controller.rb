class StudentsController < ApplicationController

  def index
    students = 
    if params[:first_name]
      Student.find_by(params[:first_name])
    elsif
      params[:last_name]
      Student.find_by(params[:last_name])
    else
      Student.all
    end


    render json: students
    
  end

  def show
    student = Student.find(params[:id])
    render json: student 
  end

end
