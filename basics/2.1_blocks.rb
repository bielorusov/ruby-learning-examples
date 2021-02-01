# frozen_string_literal: true

require 'rubygems'
require 'pry'

def my_block(arg1, &block)
  puts 'Start Proceed block'
  # puts "Block #{block_given? ? 'GIVEN' : 'IGNORE'} With arg: #{arg1}"
  puts "#{yield} #{arg1}" if block_given?
  puts 'End Proceed block'
end

puts "###"*15 + " Block given " + "###"*15
my_block('World') do
  'Hello'
end

puts "###"*15 + " Without block " + "###"*15
my_block('Hello')
