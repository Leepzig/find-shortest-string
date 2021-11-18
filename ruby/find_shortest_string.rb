require 'benchmark'

def find_shortest_string(arr)
  # type your code in here
  return arr.min { |a, b| a.length <=> b.length}
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
  long_array = []
  arr = (0...50).map { ('a'..'z').to_a[rand(26)] }
  100.times do 
    str = arr.slice(rand(0..30), rand(1..20)).join
    long_array.append(str)

  end
  total_time = 0
  1000.times do
    time = Benchmark.measure {
      find_shortest_string(long_array)
    }
    total_time = total_time + time.real
  end
  puts "Average Time:"
  puts total_time/1000
end

# Please add your pseudocode to this file
# And a written explanation of your solution
