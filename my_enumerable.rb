module MyEnumerable
  def all?
    each { |el| return false unless yield el }
    true
  end

  def any?
    each { |el| return true if yield el }
    false
  end

  def filter
    arr = []
    each { |el| arr << el if yield el }
    arr
  end
end
