require_relative('../db/sql_runner.rb')
require('pry')
class House

  attr_reader :id, :name, :logo_url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo_url = options['logo_url']
  end

  def save()
    sql = "INSERT INTO houses (
    name, logo_url )
    VALUES ('#{@name}', '#{@logo_url}') RETURNING *"
    house = SqlRunner.run(sql).first
    @id = house['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses ; "
    houses = SqlRunner.run(sql)
    return houses.map{ |house| House.new(house) }
  end

end
