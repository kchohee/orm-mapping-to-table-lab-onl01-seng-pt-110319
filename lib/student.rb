class Student
  attr_accessor :name, :grade, :id
  def initialize (name, grade, id= nil)
    @name = name
    @grade = grade
    @id = id
  end
  def self.create_table
    sql= <<-SQL
    CREATE TABLE IF NOT EXIST students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    )
    SQL
    DB[:conn].excute(SQL)
  end
  def self.drop_table
    sql = <<-SQL
    DROP TABLE students
    SQL
    DB[:conn].execute(sql)
  end
  def save
  end
  def self.create
  end
  
end
