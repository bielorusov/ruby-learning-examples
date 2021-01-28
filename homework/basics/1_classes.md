### 0. What that mean/is that?

0.1 ```#frozen_string_literal: true```

_INFO: Describe here_

0.2 ```Object```

_INFO: Describe here_

---

### 1. What is difference between?

- 1.1 ```Person.new <=> Person```

_INFO: Describe here_

- 1.2 ```Person.new.some_method <=> Person.some.method```

_INFO: Describe here_

- 1.3 ```Person.new(age, street) <=> Person.new```

_INFO: Describe here_

---

### 2. Describe, how you can call Person class/object methods and  What the are returns?

```ruby
class Person
  attr_accessors :meth_5
  attr_reader :meth_6

  def initialize
  end

  def meth_1
    'Hello world from meth_1'
  end

  def meth_2
    return 'My name is meth_2'

    'Hello world from meth_2'
  end

  def self.meth_3
    'Hello world from meth_3'
  end

  class << self
    def meth_4
      meth_3
    end
  end

  private

  def i_am_private
    'Hi from private....'
  end
end
```

_INFO: Describe here_
