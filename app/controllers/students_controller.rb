class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  #lists all students
  def index
    @students = Student.all
  end

  #show page for each student
  def show
    set_student #reuses set_student method below to find each student by id && avoid DRY
  end

  #show whether each student is active or inactive
  def activate
    set_student
    @student.active = !@student.active #toggle their active attribute between true and false
    @student.save
    redirect_to student_path(@student) #redirect to each student's show page
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end