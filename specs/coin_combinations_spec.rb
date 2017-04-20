require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("returns the change in denominations biggest to smallest") do
  expect(80.cc()).to(eq("Quarter(s):3, Dime(s):0, Nickel(s):1, Cent(s):0"))
  end
end
