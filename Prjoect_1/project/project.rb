class Project
  attr_accessor :name, :description, :owner
  attr_reader :tasks
  def initialize(name, description, owner)
    @name = name
    @description = description
    @owner = owner
    @tasks = []
  end

  def elevator_pitch
    "#{@name} ,#{@description}, #{@owner}"
  end

  def get_tasks
    @tasks.each{|t| puts t}
  end

  def add_tasks task
    @tasks << task
  end
end

# project1 = Project.new("My Project", "Understandin OOP")
# project1.elevator_pitch
