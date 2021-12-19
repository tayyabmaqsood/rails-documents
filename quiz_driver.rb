# frozen_string_literal:true

require 'optparse'
require_relative 'quiz_game'
Object.include(Quiz)

filename = 'problems.csv'
timer = 30

arguments = ARGV
if arguments.length.positive?
  filename = arguments[arguments.find_index('-f').to_i + 1] if arguments.include?('-f')
  filename = arguments[arguments.find_index('-file').to_i + 1] if arguments.include?('-file')
  timer = arguments[arguments.find_index('-t').to_i + 1] if arguments.include?('-t')
  timer = arguments[arguments.find_index('-time').to_i + 1] if arguments.include?('-time')
  ARGV.clear
end
Quiz.start_quiz(filename.to_s, timer.to_i)
