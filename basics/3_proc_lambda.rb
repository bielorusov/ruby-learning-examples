# frozen_string_literal: true

require 'rubygems'
require 'pry'

proc_1 = Proc.new { return 'Proc1' }
proc_2 = Proc.new { return 'Proc2' }
proc_3 = Proc.new { return 'Proc3' }

def my_func(proc1: nil, proc2: nil, proc3: nil)
  puts "Start"
  puts proc1.call if proc1
  puts proc2.call if proc2
  puts proc3.call if proc3
  puts "End"
end

# my_func(proc1: proc_1, proc2: proc_2)




# # INFO: PROC Insensitive for Arguments
# proc_example = Proc.new do |arg1, arg2, arg3|
#   puts "Proc: #{[arg1, arg2, arg3].compact.join(', ')}"
# end
# proc_example.call('Argument 1')

def log(length = 50)
  p '#' * length
  p yield if block_given?
  p '#' * length
end

# INFO: Lambda Is Sensitive for Arguments
lmd_example = -> (arg1, arg2, arg3){
  return 'OOPs'
  puts "Lambda: #{[arg1, arg2, arg3].compact.join(', ')}"
}

def test_lambda(lmd)
  puts "Start"
  lmd.call('Arg 1', 'Arg 2', 'Arg 3')
  puts "End"
end

begin
  test_lambda(lmd_example)
rescue Exception => e
  log(150) { e.message }
ensure
  puts 'Run Allways'
end