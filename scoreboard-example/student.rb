class Student

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def attempt(exam, subject)
    Marks.new(self, subject, exam, rand(100))
  end

end