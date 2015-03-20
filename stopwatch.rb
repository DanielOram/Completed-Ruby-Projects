  
#timer code to calculate how long processes take to run
class Stopwatch
  @@start_time = 0
  @@elapsed_time = 0
  @@average_times = []
  #method that counts how long a block takes to run
  def timed(&block)
    @@start_time = Time.now
    Thread.new(&block).join
    @@elapsed_time = Time.now - @@start_time
    @@average_times.push(@@elapsed_time)  
  end
  #return average time of mulitple executions
  def average
    return @@average_times.inject(:+).to_f / @@average_times.size
  end
  
  #method that takes an input block and executes exec_num of times
  def execute(exec_num, &block)
    exec_num.times do timed(&block)
    end
  end
end


#example usage to illustrate the effeciency of symbol lookups versus string lookup

ta = Stopwatch.new
ta.execute(1000) {10000.times {:foo.equal? :foo }}
puts "the average time was #{ta.average}"
tb = Stopwatch.new
tb.execute(1000) {10000.times {"foo".equal? "foo"}}
puts "the average time was #{tb.average}"


