
def welcome
  puts 'Welcome to "Guess the Secret Number"'
  sleep 2
  system('cls')
  sleep 0.2
  puts "Select Difficulty!"
  sleep 2
  system('cls')
  sleep 0.2
  puts "Diffuclty 1-4"
  input1 = gets.to_i
  return input1
end

def randome_number
  input = input1
  ran_num = 0
  if input == 1
    ran_num = rand(1..10)
    return ran_num
  elsif input == 2
    ran_num = rand(1..20)
    return ran_num
  elsif input == 3
    ran_num = rand(1..50)
    return ran_num
  else input == 4
    ran_num = rand(1..100)
    return ran_num
  end
end

def guess_the_number
  secret_number = ran_num
  running = true
  while running
    input2 = gets.to_i
    if input2 == secret_number
      puts "Correct! The secret number was" + secret_number
      running = false
    elsif input2 == 'quit'
      running = false
    end
  end
end




puts welcome
puts guess_the_number
