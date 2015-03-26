#this method gets very slow VERY fast!!!

class Fibonacci
  @@counter = 0
  def fib(n)
    @@counter += 1
    if n == 0
      return 0
    elsif n == 1
      return 1
    else 
      #puts "recursion occured"
      return fib(n - 1) + fib(n - 2)
    end
  end
  def counted
    @@counter
  end
end

f = Fibonacci.new
puts "enter an integer number to calculate the nth term in the fibonacci series: "
input = gets.to_i
sequence = f.fib(input)
puts "the #{input} number of the fibonacci series is #{sequence}"
puts "the recursive method was called #{f.counted} times!"
