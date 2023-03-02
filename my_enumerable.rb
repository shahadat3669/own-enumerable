module MyEnumerable
  def all?
    temp = 'true'
    each { |el| temp = 'false' unless yield el }
    temp
  end
end
