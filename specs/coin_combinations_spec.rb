require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("returns the change in denominations biggest to smallest") do
  expect(80.cc().to(eq("Quarters:3, Dimes:0, Nickels:1, Pennies:0")))
  end
end
