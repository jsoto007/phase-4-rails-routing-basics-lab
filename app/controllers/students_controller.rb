class StudentsController < ApplicationController

  def index 
    student_list = Student.all
    render json: student_list
  end 

  def grades
    students_by_grade = Student.all.order(grade: :desc)
    render json: students_by_grade
  end 
end
