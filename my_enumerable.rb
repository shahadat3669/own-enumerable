module MyEnumerable
  def all?
    temp = 'true'
    each { |el| temp = 'false' unless yield el }
    temp
  end

  def any?
    each { |el| return true if yield el }
    false
  end
end
