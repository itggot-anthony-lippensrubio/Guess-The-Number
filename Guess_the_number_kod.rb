
def welcome
  system('cls')
  puts 'Welcome to "Guess the Secret Number"'
  sleep 1.5
  system('cls')
  sleep 0.4
  puts "Select Difficulty!"
  sleep 1.5
  system('cls')
  sleep 0.4
  puts "Diffuclty 1-4"
  input = gets.to_i
  system('cls')
  return input
end

def randome_number
  input = welcome
  ran_num = 0

    if input == 1
    ran_num = rand(1..10)
      return ran_num
    end
  end
end

def guess_the_number
  secret_number = randome_number
  running = true
  tries = 0
  while running
    puts "Guess the secret number"
    puts "The secret number is between 1-10"
    input2 = gets.to_i

    if input2 == secret_number
      puts "Correct! The secret number was #{secret_number}."
      tries += 1
      puts "Congratilations! You got it in #{tries} tries!"
      sleep 3
      system('cls')
      running = false

    elsif input2 < secret_number
      puts "Wrong the secret number is higher."
      tries += 1
      sleep 1
      system('cls')

    else
      puts "Wrong the secret number is lower."
      tries += 1
      sleep 1
      system('cls')

    end
  end
end

puts guess_the_number
