class StudentsController < ApplicationController
def new
@students=Student.all
@student=Student.new
end

def create
params.permit!
@student=Student.new(params[:student])
if @student.save
redirect_to new_student_path
end
end

end
