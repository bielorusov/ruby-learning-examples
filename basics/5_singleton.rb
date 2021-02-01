# frozen_string_literal: true

require 'rubygems'
require 'pry'
require 'singleton'

class ImOnlyOne
  def self.new
    @@singleton ||= super
  end
end


p ImOnlyOne.new == ImOnlyOne.new

class ImOneToo
  include Singleton
end

p ImOneToo.instance == ImOneToo.instance