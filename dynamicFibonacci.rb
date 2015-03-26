#this method is faster than the traditional recursive method as fewer recursive calls are made!!

class DynamicFibonacci
  @@counter = 0
  @@libraryOfSequences = Hash.new
  def fib(n)
    @@counter += 1
    if n == 0
      return 0
    elsif n == 1
      return 1
    else 
      unless @@libraryOfSequences.has_key?(n) #if the sequence value has already been calculated them we just return it instead of using more recursion!
        @@libraryOfSequences[n] = fib(n - 1) + fib(n - 2) #if the value is not in the hash we must find it
      end
      return @@libraryOfSequences[n]     
    end
  end
  def counted
    @@counter
  end
end

f = DynamicFibonacci.new
input = gets.to_i
sequence = f.fib(input)
puts "the #{input} number of the fibonacci series is #{sequence}"
puts "the recursive method was called #{f.counted} times!"
