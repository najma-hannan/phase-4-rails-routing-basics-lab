class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    sorted_by_grades = students.sort { |a, b| b.grade <=> a.grade }
    render json: sorted_by_grades
  end

  def highest_grade
    max_grade = Student.all.map { |student| student.grade }.max
    student_with_highest_grade = Student.find_by(grade: max_grade)
    render json: student_with_highest_grade
  end
end
