# frozen_string_literal:true

require 'csv'
require 'timeout'
module Quiz
  def shuffle_quiz(quiz_data)
    loop do
      print 'Do you want to shuffle quiz y/n: '
      choice = gets.chomp.strip.downcase
      case choice
      when 'y'
        return quiz_data.shuffle
      when 'n'
        break
      else
        'Make Appropriate choice'
      end
    end
    quiz_data
  end

  def validations_on_quiz(quiz_data, time, correct, wrong)
    quiz_data.length.times do |i|
      begin
        Timeout.timeout(time) do
          puts("Question No #{i + 1}")
          print("#{quiz_data[i][0]} = ")
          answer = gets.chomp.strip
          if quiz_data[i][1].downcase == answer
            correct += 1
          else

            wrong += 1
          end
        end
      rescue Timeout::Error
        puts ' '
        wrong += 1
      end
    end
    [correct, wrong]
  end

  def start_quiz(file_name, timer)
    if File.file?(file_name) && File.extname(file_name).strip == '.csv'
      quiz_data = CSV.read(file_name)
      quiz_data = shuffle_quiz(quiz_data)
      print 'Press any key to start the quiz'
      gets
      correct, wrong = validations_on_quiz(quiz_data, timer, 0, 0)
      puts "Total Questions: #{quiz_data.length}"
      puts "Valid answers: #{correct}"
      puts "Invalid answers: #{wrong}"
    else
      puts 'Invalid filename'
    end
  end
end
