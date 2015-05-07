require_relative './spec_helper'

describe CustomerRepository do

  describe 'all' do
    it 'returns all of the customer repository records' do
      results = CustomerRepository.all
      expect(results.count).to eq 1000
    end
  end

  describe 'random' do
    it 'returns one line at random' do
      customer_one = CustomerRepository.random
      customer_two = CustomerRepository.random
      expect(customer_one).to_not eq customer_two
    end

    xit 'returns a customer object' do
      customer = CustomerRepository.random
      expect(customer).to be_a Customer
    end
  end

end
