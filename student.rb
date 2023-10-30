require "./person.rb"
require "./classroom"

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'Uknown', parent_permission: true)
    super(age)
    @classroom = classroom
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

classroom = Classroom.new("math")
classroom2 = Classroom.new("Physique")
s = Student.new(classroom, 20)


print "student class room:"
puts s.classroom
puts

# print "student new class room:"
# puts s.add_classroom(classroom2)
# puts
s.add_classroom(classroom)

print "student class room after add_classroom:"
puts s.classroom
puts

print "classroom students: "
puts classroom.students
puts

print "classroom1 students: "
puts classroom2.students
puts