class TotalMarks

  attr_accessor :exam, :student, :value

  def initialize(student, exam)
    @student = student
    @exam = exam
    @value = @exam.marks_for(@student).map(&:value).inject(0) {|sum, v| sum+= v}
  end

  def <=>(another_grade)
    self.value <=> another_grade.value
  end

end