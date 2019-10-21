# code here!

class School
  
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    self.roster.reduce({})do |sorted_roster, grade|
      grade.sort
  end
  
end