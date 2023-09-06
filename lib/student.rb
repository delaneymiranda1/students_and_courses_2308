class Student
  attr_reader :name, :age, :scores
  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
  end

  def log_score(test_score)
    @scores << test_score
  end

  def grade
    @scores.sum.to_f / @scores.length
  end
end
