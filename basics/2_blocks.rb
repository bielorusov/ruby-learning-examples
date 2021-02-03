# frozen_string_literal: true

require 'rubygems'
require 'pry'


def am_block(arg)
  puts 'am_block Started'
  puts "#{arg} #{yield}" if block_given?
  puts 'am_block Finished'
end


# am_block('Hello') do
#   'Context from block'
# end

am_block('Hello')