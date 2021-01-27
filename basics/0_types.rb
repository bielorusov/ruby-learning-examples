# frozen_string_literal: true

require 'rubygems'
require 'pry'

# INFO: Integer, String, Symbol, Array, Hash, Range, Struct, OpenStruct

# INFO: Integer
int = Integer(0) # => 0
int = 7 # => 7
int.class # => Integer

# INFO: String
str = String('') # => ''
str = ''  # => ''
str.class # => String

# INFO: Symbol
sym = :some_symbol # => :some_symbol
sym = :'some_symbol' # => :some_symbol
sym.class # => Symbol

# INFO:  Array
arr = Array.new # => []
arr = []  # => []
arr = %w[a b c d] #=> ['a', 'b', 'c', 'd']
arr = %i[a b c d] #=> [:a :b :c :d]
arr.class # => Array

# INFO: Hash
h = Hash.new
h = {}
h.class # => Hash

# INFO: Range
range = Range.new(3,4) # => 3..4
range = 3..4
range.class # => Range

# INFO: Struct
# Return structure
# A Struct is a convenient way to bundle a number of attributes together, using accessor methods, without having to write an explicit class.
Person = Struct.new(:first_name, :last_name) do
  def full_name
    "#{first_name} #{last_name}"
  end
end # => <Class:0x00007fdc81865320>

person = Person.new('John', 'Doe')
person.first_name # => 'John'
person.last_name # => 'Doe'
person.full_name # => 'John Doe'

# INFO: OpenStruct < Struct
# Return Object
# Implement setters
open_struct = OpenStruct.new({
  first_name: 'John',
  last_name: 'Doe'
}) # => #<OpenStruct first_name="John", last_name="Doe">

open_struct.first_name # => 'John'
open_struct.last_name # => 'Doe'

open_struct.first_name = 'Garry'
open_struct.first_name # => 'Garry'

open_struct.last_name = 'Moor'
open_struct.last_name # => 'Moor'


