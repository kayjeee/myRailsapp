# MyList class with MyEnumerable module.
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    # Implementation of each method
    # Yields successive members of @list to the given block.
    @list.each { |element| block.call(element) }
  end
end
