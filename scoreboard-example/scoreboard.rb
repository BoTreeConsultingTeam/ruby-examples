require './exam'

class Scoreboard

  attr_accessor :exam

  def initialize(exam)
    @exam = exam
    @exam.prepare_total_marks
  end

  def display
    puts '|==========================|'
    puts '| ' + "Student".ljust(10) + ' | ' + "Total Marks".ljust(12) + '|'
    puts '|==========================|'
    @exam.total_marks.sort!.reverse.each do |g|
      puts '| ' + g.student.name.ljust(10) + ' | ' + g.value.to_s.ljust(12) + '|'
    end
    puts '|==========================|'
  end

end

midterm_exam = Exam.new
midterm_exam.take
scoreboard = Scoreboard.new(midterm_exam)
scoreboard.display