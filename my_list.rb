# frozen_string_literal: true

# This class represents a custom list and includes MyEnumerable module.
class MyList
    include MyEnumerable
  
    def initialize(*list)
      @list = list
    end
  
    def each(&block)
      # Implementation of each method
    end
  end
  
