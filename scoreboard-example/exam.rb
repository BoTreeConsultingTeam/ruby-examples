require './student'
require './subject'
require './marks'
require './total_marks'

class Exam

  SUBJECTS = ["Maths", "Science", "Social Studies", "Geography", "Economics"]
  STUDENTS = ["Ankur", "Rishi", "Chetan", "Pragati", "Nishant", "Chitan", "Ajay", "Hiren", "Shahid", "Subhash"]

  attr_accessor :name, :students, :subjects, :marks, :total_marks

  def initialize(name)
    @name = name
    create_students
    create_subjects
  end

  def take
    @students.each do |student|
      @subjects.each do |subject|
        ( @marks ||= [] ) << student.attempt(self, subject)
      end
    end
  end

  def prepare_total_marks
    @students.each do |student|
       ( @total_marks ||= [] ) << TotalMarks.new(student, self)
    end
  end

  def marks_for(student)
    @marks.collect {|m| m if m.student == student}.compact
  end

  private

  def create_students
    10.times { |n| ( @students ||= [] ) << Student.new(STUDENTS[n]) }
  end

  def create_subjects
    5.times { |n| ( @subjects ||= [] ) << Subject.new(SUBJECTS[n]) }
  end
end