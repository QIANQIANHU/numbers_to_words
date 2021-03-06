def number_to_words(number)
  ones = Hash.new
  ones = {1 => "one", 2 => "two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}

  tens = Hash.new
  tens ={1 => "teen", 2 => "twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}

  hundreds = Hash.new
  hundreds = {1 => "one hundred", 2 => "two hundred", 3=>"three hundred", 4=>"four hundred", 5=>"five hundred", 6=>"six hundred", 7=>"seven hundred", 8=>"eight hundred", 9=>"nine hundred"}

  if (number % 1000 > 900)
    hundreds_place = hundreds.fetch(9)
  elsif (number % 1000 > 800)
    hundreds_place = hundreds.fetch(8)
  elsif (number % 1000 > 700)
    hundreds_place = hundreds.fetch(7)
  elsif (number % 1000 > 600)
    hundreds_place = hundreds.fetch(6)
  elsif (number % 1000 > 500)
    hundreds_place = hundreds.fetch(5)
  elsif (number % 1000 > 400)
    hundreds_place = hundreds.fetch(4)
  elsif (number % 1000 > 300)
    hundreds_place = hundreds.fetch(3)
  elsif (number % 1000 > 200)
    hundreds_place = hundreds.fetch(2)
  elsif (number % 1000 > 100)
    hundreds_place = hundreds.fetch(1)
  else
    hundreds_place = ""
  end

  if (number % 100 > 90)
    tens_place = tens.fetch(9)
  elsif (number % 100 > 80)
    tens_place = tens.fetch(8)
  elsif (number % 100 > 70)
    tens_place = tens.fetch(7)
  elsif (number % 100 > 60)
    tens_place = tens.fetch(6)
  elsif (number % 100 > 50)
    tens_place = tens.fetch(5)
  elsif (number % 100 > 40)
    tens_place = tens.fetch(4)
  elsif (number % 100 > 30)
    tens_place = tens.fetch(3)
  elsif (number % 100 > 20)
    tens_place = tens.fetch(2)
  elsif (number % 100 > 10)
    tens_place = tens.fetch(1)
  else
    tens_place = ""
  end

  if (number % 10 == 1)
    ones_place = ones.fetch(1)
  elsif (number % 10 == 2)
    ones_place = ones.fetch(2)
  elsif (number % 10 ==3)
    ones_place = ones.fetch(3)
  elsif (number % 10 == 4)
    ones_place = ones.fetch(4)
  elsif (number % 10 == 5)
    ones_place = ones.fetch(5)
  elsif (number % 10 == 6)
    ones_place = ones.fetch(6)
  elsif (number % 10 == 7)
    ones_place = ones.fetch(7)
  elsif (number % 10 == 8)
    ones_place = ones.fetch(8)
  elsif (number % 10 == 9)
    ones_place = ones.fetch(9)
  else
    ones_place = ""
  end

  if (tens_place == "teen")
    if (ones_place == "one")
      ones_place = "eleven"
      tens_place = ""
    elsif (ones_place == "two")
      ones_place = "twelve"
      tens_place = ""
    elsif (ones_place == "three")
      ones_place = "thirteen"
      tens_place = ""
    elsif (ones_place == "five")
      ones_place = "fifteen"
      tens_place = ""
    end

  end

  if (hundreds_place != "")
    return "#{hundreds_place} #{tens_place} #{ones_place}"
  elsif (tens_place != "")
    return "#{tens_place} #{ones_place}"
  else
    return ones_place
  end
end
