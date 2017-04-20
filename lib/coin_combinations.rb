class Fixnum
  define_method(:cc) do
  coins = Hash.new()
  coins.store("Quarters",25)
  coins.store("Dimes",10)
  coins.store("Nickels",5)
  coins.store("Pennies",1)

  quarter_count = 0
  dime_count = 0
  nickel_count = 0
  penny_count = 0

  input = self

counter = input
  until counter.==(0)
    if counter >= 25
    quarter_count = (counter/25).floor
    counter = (input%(25*quarter_count))
    end
    if counter >= 10 && counter < 25
      dime_count = counter/10.floor
      counter = (counter%(10*dime_count))
    end
    if counter >= 5 && counter<10
      nickel_count = counter/5.floor
      counter = (counter%(5*nickel_count))
    end
    if counter >= 1 && counter<5
      penny_count = counter
      counter = 0
    end
    puts(quarter_count,dime_count,nickel_count,penny_count)
    end
  end
end
