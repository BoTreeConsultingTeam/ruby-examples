require './exam'

class Scoreboard

  attr_accessor :exam

  def initialize(exam)
    @exam = exam
    @exam.prepare_total_marks
  end

  def display
    puts '|============================|'
    puts "| Scorecard for #{@exam.name}".ljust(28) + ' |'
    puts '|============================|'
    puts '| ' + "Student".ljust(10) + ' | ' + "Total Marks".ljust(14) + '|'
    puts '|============================|'
    @exam.total_marks.sort!.reverse.each do |g|
      puts '| ' + g.student.name.ljust(10) + ' | ' + g.value.to_s.ljust(14) + '|'
    end
    puts '|============================|'
  end

end

midterm_exam = Exam.new('Midterm Exam')
midterm_exam.take
midterm_exam_scoreboard = Scoreboard.new(midterm_exam)
midterm_exam_scoreboard.display

puts "\n\n\n\n"

annual_exam = Exam.new('Annual Exam')
annual_exam.take
fina_scoreboard = Scoreboard.new(annual_exam)
fina_scoreboard.display