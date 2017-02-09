# require './lib/bank'

class Person
  attr_accessor :bank, :name, :cash_amount
  def initialize(name, cash_amount)
    @name = name
    @cash_amount = cash_amount
    @bank = bank
    "#{name} has been created with #{cash_amount} galleon(s) in cash."
  end
end




# person1 = Person.new("Minerva", 1000)
# person2 = Person.new("Luna", 500)
