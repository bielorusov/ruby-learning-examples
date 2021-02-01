# frozen_string_literal: true

require 'rubygems'
require 'pry'

# INFO: PROC Insensitive for Arguments
proc_example = Proc.new do |arg1, arg2, arg3|
  puts "Proc: #{[arg1, arg2, arg3].compact.join(', ')}}"
end
proc_example.call('Argument 1')


# INFO: LAMBDA Sensitive for Arguments
lambda_example = lambda do |arg1, arg2, arg3|
  puts "Proc: #{[arg1, arg2, arg3].compact.join(',')}}"
end

begin
  lambda_example.call('Argument 1')
rescue
  puts "Lambda is sensitive to aruments"
end

# INFO: Calls example
class IndexService
  def self.process!(callback)
    puts "Start: #{name}#process!"
    callback.call
    puts "Finish: #{name}#process!"
  end
end

class Controller
  def proc_example
    IndexService.process!(proc_callback)
  rescue
    puts 'Proc stopped method'
  end

  def lambda_example
    IndexService.process!(lambda_callback)
  rescue
    puts 'Lambda stopped method'
  end

  private

  def lambda_callback
    lambda do
      puts "Runing delayed call lambda_callback"

      return
    end

  end

  def proc_callback
    Proc.new do
      puts "Runing delayed call proc_callback"

      return
    end
  end
end

ctrl = Controller.new
puts "###"*15 + " PROC " + "###"*15
ctrl.proc_example
puts "###"*15 + " LAMBDA " + "###"*15
ctrl.lambda_example