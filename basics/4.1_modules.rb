# frozen_string_literal: true

require 'rubygems'
require 'pry'

# INFO: Include, Extend difference
module MyModule
  def account
    puts 'Running account!'
  end
end

class TestClass
  include MyModule # INFO: Include instance methods
  extend MyModule  # INFO: Include class methods
end

TestClass.new.account
TestClass.account


module AllInOne
  def self.included(klass)
    klass.extend(ClassMethods)
  end
  # INFO: Module has class methods
  module ClassMethods
    def account
      puts "I'm class method"
    end
  end

  # INFO: Module has instance methods
  def account
    puts "I'm instance method"
  end
end

class AllIn
  include AllInOne
end

AllIn.account
AllIn.new.account


