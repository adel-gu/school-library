require './person'
require './decorator'
require './capitalizeDecorator'
require './trimmerDecorator'

person = Person.new(28, 'adel guitoun')
print 'Return the name: '
puts person.correct_name
puts

person_decorator = Decorator.new(person)
print 'Return the same name as Person: '
puts person_decorator.correct_name
puts

person_capitalized_name = CapitalizeDecorator.new(person)
print 'Return the name capitalized: '
puts person_capitalized_name.correct_name
puts

person_trimmer_name = TrimmerDecorator.new(person)
print 'Return the name trimmed: '
puts person_trimmer_name.correct_name
puts