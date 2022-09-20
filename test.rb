require_relative 'person'

person = Person.new('Andrii', 22, 'male', '6.1', 86)
petro = Person.new('Perto', 22, 'male', '6.1', 86)
alex = Person.new('Alex', 22, 'male', '6.1', 86)

# creating methods manually
# Person.create_method(person.name)
# Person.create_method(petro.name)
# Person.create_method(alex.name)

# calling those methods
puts person.sumars_bio('love')
puts alex.alexs_bio('test')
puts alex.alexs_summary

puts alex.alex_bio('hate')
puts alex.alex_summary
