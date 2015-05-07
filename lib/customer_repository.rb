class CustomerRepository
  def self.all
    customers
  end

  def self.random
    customers.sample
  end

  def self.customers
    customers = CSV.read('./data/customers.csv')
    customers.shift
    customers
  end
end
