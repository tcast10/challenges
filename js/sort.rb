# Why lambda?: add_numbers2 -> Function and a variable

class Person
  attr_reader :age, :name
  def initialize(name, age)
    @name = name
    @age = age
  end

end

ken = Person.new("Ken", 28)
marco = Person.new("Marko", 31)
erica = Person.new("Erica", 29)
cindy = Person.new("Cindy", 14)

people = [ken, marco, erica, cindy]

def sort_people(people, comparer)
  people.sort do |x, y|
    comparer.call(x) <=> comparer.call(y)
    #x.age <=> y.age
    #y.age <=> x.age
  end
end

#grab_age = lambda do |person|
#  person.age
#end

#can change person.age to person.name // Do not need multi-lone code
#Anonymous functions are lambdas that don't have names
#Lambdas that do have names are functions and variables
sorted_people = sort_people(people, lambda { |person|
  person.age})

puts sorted_people.inspect

#numbers = [1,5,8,1,-2,4,99,23,-66]
#sorted_numbers = numbers.sort
#puts sorted_numbers.inspect

