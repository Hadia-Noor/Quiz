def quiz()
  puts "Enter any key to start the Quiz"
  input = gets
  t = 30
  start_time = Time.now.to_i
  current_time = Time.now.to_i
  while current_time < start_time + t
    require 'csv'
    flag = 0
    total = CSV.foreach('problems.csv').count
    CSV.foreach ('problems.csv') do |row|
    if Time.now.to_i < start_time + t
      puts row[0]
      puts "Enter Answer"
      ans = gets.chomp
      if ans == row[1]
        puts "Correct"
        flag=flag+1
      else
        puts "Wrong"
      end
    end
    current_time = Time.now.to_i
  end
end
  puts "Time's up!"
  puts "\nResults"
  puts "Total Questions: #{total}"
  puts "Correct: #{flag}"
end
puts quiz()

