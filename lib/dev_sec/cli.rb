class DevSec::CLI 
  def call
    intro
    end 

  def intro
    puts "We've been waiting for you"
    puts "You don't know us, but we know you."
    puts "We've been waiting for you."
    puts "There's not much time though."
    puts "A simple test to get things moving"
    unlock
  end

  def sleep_counter
    sleep(1.0)
    puts "."
    sleep(1.0)
    puts ".."
    sleep(1.0)
    puts "..."
    sleep(1.0)
  end

  def unlock
    sleep_counter
    cipher_one
  end

  def user_input
    user_input = gets.strip
  end

  def cipher_one
    puts "~ crack the code ~"
    puts "5-1-19-25-15-14-5"
    if user_input == "EASYONE"
      puts "Permission granted."
      permission_granted
    else 
      puts "Permission denied, try again."
      cipher_one
    end
  end

  def permission_granted
    sleep_counter
    puts "Just wanted to make sure you were the real deal. Ok, lets get to work."
    sleep_counter
    
  end


end







# ./bin/dev_sec