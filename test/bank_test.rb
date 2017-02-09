require 'minitest/autorun'
require './lib/bank'
require 'minitest/pride'

class BankTest < Minitest::Test

  def test_can_it_create_class
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")

    assert_instance_of Bank, chase
  end

  def test_can_it_access_person_class
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)

    assert_instance_of Person, person1
  end

  def test_can_create_account_with_person
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)

    assert_equal "An account has been opened for Minerva with JP Morgan Chase.", chase.open_account(person1)
  end

  def test_can_accept_deposits
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)

    assert_equal "750 galleons have been deposited into Minerva's Chase account. Balance: 750 Cash: 250", chase.deposit(person1, 750)
  end

  def test_person_cannot_deposit_more_than_they_have
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)

    assert_equal "Minerva does not have enough cash to perform this deposit.", chase.deposit(person1, 5000)
  end

  def test_person_can_make_withdrawal
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)

    assert_equal "Minerva has withdrawn 250 galleons. Balance: 250", chase.withdrawal(person1, 250)
  end
end
