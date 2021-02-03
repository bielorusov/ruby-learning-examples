# frozen_string_literal: true

require 'rubygems'
require 'pry'
require 'singleton'

class ManualSingletonFoo
  def self.new
    @instance ||= super
  end
end

puts ManualSingletonFoo.new == ManualSingletonFoo.new # => True

class SingletonFoo
  include Singleton
end

puts SingletonFoo.instance == SingletonFoo.instance # => True
