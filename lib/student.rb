class Student
  attr_accessor :name, :grade, :id
  def initialize (name, grade, id= nill)
    @name = name
    @grade = grade
    @id = id
  end
end
