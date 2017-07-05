class BinarySearch
	attr_reader :list
	def initialize(list)
		@list = list

	end


  def binary_search(item)
    high = (@list.size) - 1
    low = 0

    while (low <= high)
      mid = (high + low) / 2
      puts @list[mid]
      if @list[mid] == item
        return list[mid]
      elsif @list[mid] < item
        low = mid + 1
      else
        high = mid - 1 
      end
    end
    return nil
        

  end

  def linear_search(item)
    @list.each{|number| return number if item == number}
  end

	
end