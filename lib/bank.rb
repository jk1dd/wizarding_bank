require './lib/person'

class Bank
  attr_reader :person, :cash_amount, :account_balance
  def initialize(bank_name)
    @bank_name = bank_name
    # @person = person
    @account_balance = 0
    "#{bank_name} has been created."
  end

  def open_account(name_of_person)
    "An account has been opened for #{name_of_person.name} with #{@bank_name}."
  end

  def deposit(name_of_person, amount)
    if amount <= name_of_person.cash_amount
      @account_balance += amount
      name_of_person.cash_amount -= amount
      "#{amount} galleons have been deposited into #{name_of_person.name}'s Chase account. Balance: #{@account_balance} Cash: #{name_of_person.cash_amount}"
    else
      "#{name_of_person.name} does not have enough cash to perform this deposit."
    end
  end

  def withdrawal(name_of_person, amount_withdrawn)
    if amount_withdrawn <= @account_balance # account balance needs to reflect post-deposits, or 0 if none have been made
      @account_balance -= amount_withdrawn
      name_of_person.cash_amount += amount_withdrawn
      "#{name_of_person.name} has withdrawn #{amount_withdrawn} galleons. Balance: #{@account_balance}"
    else
      "Insufficient funds."
    end
  end

end


# chase = Bank.new("JP Morgan Chase")
# chase.open_account(person1)

# wells_fargo = Bank.new("Wells Fargo")
