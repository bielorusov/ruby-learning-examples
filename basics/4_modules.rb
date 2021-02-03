# frozen_string_literal: true

require 'rubygems'
require 'pry'


# INFO: Namespacing
module Workspace
  class SuperMan
  end
end

module Space
  include Workspace

  class SuperMan
  end
end

p Workspace::SuperMan != Space::SuperMan


module Ruby
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  def run_me
    puts "I'm instance method"
  end

  module ClassMethods
    def run_me
      puts "I'm class method"
    end
  end
end

# INFO: Class/ Object Extending
class ExtRuby
  include Ruby
end

ExtRuby.include(Workspace)
ExtRuby::SuperMan.new

# ExtRuby.run_me
# ExtRuby.new.run_me



