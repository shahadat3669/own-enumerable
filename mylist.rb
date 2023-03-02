require_relative './my_enumerable'

class Mylist
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# new_list = Mylist.new([1, 1, 2, 4]) # true
# new_list = Mylist.new([1, 10, 20, 4]) #false ok

puts(new_list.all? { |e| e < 5 })
