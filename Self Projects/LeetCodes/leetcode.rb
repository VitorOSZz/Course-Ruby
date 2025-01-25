system('clear')
def two_sum(nums, target)

  time = 0.to_i
  nums.each do |run_time|
    number = (target - run_time)
    if nums.index(number) != 0 
      index = nums.index(number)
    else 
      index = (nums.each_index.select { |a| nums[a] == number })[1]
    end

    if index != nil
      if (run_time + nums[index] == target) && (time != index)
        first = nums.index(run_time)
        second = index
        if first == second
          index = (nums.each_index.select { |a| nums[a] == number })
          if index.length == 1
          else 
            return index
          end
        else
          return [first, second]
        end
      end
      time += 1
    end
  end
  "Error"
end

nums = [1,3,4,2]
target = 6
p two_sum(nums, target) # => [0,1]


