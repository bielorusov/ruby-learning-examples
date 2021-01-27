# frozen_string_literal: true

require 'rubygems'
require 'pry'

# INFO: TrueClass, FalseClass, NilClass, Integer, String, Symbol, Array, Hash, Range, Struct, OpenStruct

# INFO: TrueClass
true.class # => TrueClass
true.is_a?(TrueClass) # => true

# INFO: FalseClass
false.class # => FalseClass
false.is_a?(FalseClass) # => true

# INFO: NilClass
nil.class  # => NilClass
nil.is_a?(NilClass) # => true

# INFO: Integer
int = Integer(0) # => 0
int = 7 # => 7
int.class # => Integer
int.is_a?(Integer) # => true

# INFO: String
str = String('') # => ''
str = ''  # => ''
str.class # => String
str.is_a?(String) # => true

# INFO: Symbol
sym = :some_symbol # => :some_symbol
sym = :'some_symbol' # => :some_symbol
sym.class # => Symbol
sym.is_a?(Symbol) # => true

# INFO:  Array
arr = Array.new # => []
arr = []  # => []
arr = %w[a b c d] #=> ['a', 'b', 'c', 'd']
arr = %i[a b c d] #=> [:a :b :c :d]
arr.class # => Array
arr.is_a?(Array) # => true

# INFO: Hash
h = Hash.new
h = {}
h.class # => Hash
h.is_a?(Hash) # => true

# INFO: Range
range = Range.new(3, 4) # => 3..4
range = 3..4
range.class # => Range
range.is_a?(Range) # => true

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

Person.new.is_a?(Struct) # => true
Person.new.is_a?(Person) # => true

# INFO: OpenStruct
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

open_struct.is_a?(Struct) # => false
open_struct.is_a?(OpenStruct) # => true


