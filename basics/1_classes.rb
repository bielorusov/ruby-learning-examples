# frozen_string_literal: true

require 'rubygems'
require 'pry'

module Orm
  module Storage
    class Base
      def self.add_record(object)
        raise NotImplementedError, 'should implemented'
      end

      def self.delete(id)
        raise NotImplementedError, 'should implemented'
      end

      def self.all
        raise NotImplementedError, 'should implemented'
      end
    end

    class Postgres < Base
        # @@db = pg.connect
    end

    class Memory < Base
      @@collection = []

      class << self
        def add_record(object)
          @@collection << object
        end

        def delete(id)
          @@collection = @@collection.select{|object| object.object_id != id }
        end

        def all
          @@collection
        end
      end
    end
  end

  module Interfaces
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    module ClassMethods
      def add_record(object)
        Orm::Storage::Memory.add_record(object)
      end

      def destroy(id)
        Orm::Storage::Memory.delete(id)
      end

      def all
        Orm::Storage::Memory.all
      end

      def count
        all.count
      end
    end

    def save
      self.class.add_record(self)
    end
  end

  class Base
    include Interfaces
  end
end

class Human
  include Orm::Interfaces

  attr_reader :sex, :age, :weight

  @@default_age = 0
  @@default_weight = 2

  def initialize(age: @@default_age , weight: @@default_weight)
    @age = age
    @weight = weight
  end

  def child?
    age < 12
  end

  def teenager?
    (13..19).include?(age)
  end

  def adult?
    age > 19
  end
end

class Man < Human
  def initialize(**args)
    super

    @sex = 1
  end
end

class Woman < Human
  def initialize(**args)
    super

    @sex = 0
  end
end


# RTFM: Man.all.select { |man| man.adult? }  #=>  Man.all.select(&:adult?)



