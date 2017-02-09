require 'minitest/autorun'
require './lib/person'
require 'minitest/pride'

class PersonTest < Minitest::Test

  def test_can_it_create_class
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)
    assert_instance_of Person, person1
  end

  def test_can_it_return_name
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)
    assert_equal "Minerva", person1.name
  end

end
