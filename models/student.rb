require_relative('../db/sql_runner.rb')
require_relative('./house.rb')
require('pry')

class Student
  attr_reader :id, :first_name, :last_name,  :age, :house_id  

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i
    @house_id = options['house_id'].to_i
  end

  def save()
    if @house_id != 0      # after table alteration
      sql = "INSERT INTO students (
      first_name, last_name, house_id, age)
      VALUES ('#{@first_name}', '#{@last_name}', #{@house_id}, #{@age}) RETURNING *"
    else              # before table alteration
      sql = "INSERT INTO students (
      first_name, last_name, house, age)
      VALUES ('#{@first_name}', '#{@last_name}', '#{@house}', #{@age}) RETURNING *"
    end
    student = SqlRunner.run(sql).first
    @id = student['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM students;"
    students = SqlRunner.run(sql)
    return students.map {|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    student = SqlRunner.run(sql).first
    return Student.new(student)
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = #{@house_id};"
    # binding.pry
    return House.new(SqlRunner.run(sql).first)
  end

  def pretty_name
    return "#{first_name} #{last_name}"
  end

end