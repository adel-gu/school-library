require './person.rb'

class Teacher < Person
  def initialize(specialization, age, name = 'Uknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end