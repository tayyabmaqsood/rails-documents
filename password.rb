# frozen_string_literal:true

def input_from_users(message)
  print message
  gets.chomp
end

def password_include?(message)
  choice = 'n'
  loop do
    print message
    choice = gets.chomp.strip.downcase
    case choice
    when 'y'
      return choice
    when 'n'
      break
    else
      'Make Appropriate choice'
    end
  end
  choice
end

password = []
password_length = 0
while password_length < 6
  password_length = input_from_users('Please Enter your password length must be greater than 6: ').to_i
end
alphabet_option = password_include?('Do you want to include alphabets y/n :')
password = ('a'..'z').to_a + ('A'..'Z').to_a if alphabet_option == 'y'

numeric_option = password_include?('Do you want to include numeric y/n : ')
password += (0..9).to_a if numeric_option == 'y'

special_charater_option = password_include?('Do you want to include special charaters y/n : ')
password += ('!'..'?').to_a if special_charater_option == 'y'
password = (0..9).to_a.sample(password_length) if password.length.zero?
password = password.sample(password_length)
puts "your password is #{password.join}"
