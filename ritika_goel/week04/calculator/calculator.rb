require 'rainbow'
require 'pry'

def show_menu
  puts "Calculator" # TODO: you could .center here to make it look nice
  puts "-=" * 40 # El Cheapo divider horitzontal line
  puts "[a] - Addition"
  puts "[s] - Subtraction"
  puts "[m] - Multiplication"
  puts "[d] - Division"
  puts "[e] - Exponents"
  puts "[r] - Square Roots"
  puts "[f] - Factorial"
  puts "[mc] - Mortgage Calculator"
  puts "[bmi] - Body Mass Index"
  puts "[t] - Trip Calculator"
  puts "[q] - Quit"
end

show_menu
menu_choice = gets.chomp.downcase

until menu_choice == 'q'
  case menu_choice
  when 'a'
    print "Enter first number: "
    num1 = gets.to_i
    print "Enter second number: "
    num2 = gets.to_i

    puts "Adding #{ num1 } and #{ num2 } gives us #{ num1 + num2 }"
  when 's'
    print "Enter smaller number: "
    num1 = gets.to_i
    print "Enter larger number: "
    num2 = gets.to_i

    puts "Subtracting #{ num2 } from #{ num1 } gives us #{ num2 - num1 }"
  when 'm'
    print "Enter first number: "
    num1 = gets.to_i
    print "Enter second number: "
    num2 = gets.to_i

    puts "Multiplying #{ num1 } and #{ num2 } gives us #{ num1 * num2 }"
  when 'd'
    print "Enter dividend: "
    num1 = gets.to_i
    print "Enter divisor: "
    num2 = gets.to_i

    puts "Dividing #{ num1 } by #{ num2 } gives us #{ num1 / num2 }"
  when 'e'
    print "Enter base: "
    num1 = gets.to_f
    print "Enter exponent: "
    num2 = gets.to_f
    puts "#{ num1 } multiplied #{ num2 } times gives us #{ num1 ** num2 }"
  when 'r'
    print "Enter the number: "
    num1 = gets.to_f
    puts "Square root of #{ num1 } is #{ Math.sqrt( num1 ) }"
  when 'f'
    print "Enter the number: "
    num1 = gets.to_i
    fact = num1
    result = 1
    until fact == 0 do
      result *= fact
      fact -= 1
    end
    puts "Factorial of #{ num1 } is #{ result }"
  when 'mc'
    print "Enter the loan amount: "
    amount = gets.to_i
    print "Enter the rate of interest: "
    rate = gets.to_f
    print "Enter the duration of loan (in years): "
    duration = gets.to_i

    m_rate = (rate / 100) / 12
    m_duration = duration * 12
    m_amount = ( 1 + m_rate ) ** m_duration
    top_amount = m_rate * m_amount
    bottom_amount = m_amount - 1
    mortgage = amount * ( top_amount / bottom_amount )

    puts "To pay off $#{ amount } at a rate of #{ rate }% in #{ duration }years, you need to pay $#{ mortgage } per month."
  when 'bmi'
    print "Enter weight (in kg): "
    weight = gets.to_f
    print "Enter height (in meter): "
    height = gets.to_f

    result = weight / ( height * height )

    if result < 15
      puts "Very severely underweight with a BMI of #{ result }"
    elsif result >= 15 && result < 16
      puts "Severely underweight  with a BMI of #{ result }"
    elsif result >= 16 && result < 18.5
      puts "Underweight with a BMI of #{ result }"
    elsif result >= 18.5 && result < 25
      puts "Normal (healthy weight) with a BMI of #{ result }"
    elsif result >= 25 && result < 30
      puts "Overweight with a BMI of #{ result }"
    elsif result >= 30 && result < 35
      puts "Moderately obese with a BMI of #{ result }"
    elsif result >= 35 && result < 40
      puts "Severely obese with a BMI of #{ result }"
    else
      puts "Very severely obese with a BMI of #{ result }"
    end
  when 'tc'
    print "Enter distance(in miles)"
    distance = gets.to_f
    print "Enter miles per gallon"
    price per gallon
    speed in miles per hour
    puts "Square root of #{ num1 } is #{ Math.sqrt( num1 ) }"
  else
    puts "Invalid selection. You idiot."
  end

  show_menu
  menu_choice = gets.chomp.downcase
end

puts "Thanks for using Crappy Calculator!"
