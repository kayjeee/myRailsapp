# This module provides enumerable methods for MyList.
module MyEnumerable
  def all?(&block)
    # Implementation of all? method
    # Returns true if the block never returns false or nil for any element in the collection.
    each { |element| return false unless block.call(element) }
    true
  end

  def any?(&block)
    # Implementation of any? method
    # Returns true if the block ever returns a value other than false or nil for any element in the collection.
    each { |element| return true if block.call(element) }
    false
  end

  def filter(&block)
    # Implementation of filter method
    # Returns an array containing all elements of the collection for which the given block returns a true value.
    result = []
    each { |element| result << element if block.call(element) }
    result
  end
end
