class Marks

  attr_accessor :student, :subject, :exam, :value

  def initialize(student, subject, exam, value)
    @student = student
    @subject = subject
    @exam = exam
    @value = value
  end

end