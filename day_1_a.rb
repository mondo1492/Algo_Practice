class TempTracker
  def initialize
    @hash = Hash.new(0)
    @total_sum = 0
    @count = 0
    @greatest_count = 0
    @max = nil
    @min = nil
  end

  def insert(val)
    @hash[val] += 1
    @max = val if val > @max
    @min = val if val < @min
    @count += 1
    if @hash[val] > greatest_count
      @greatest_count += 1
      @mode = @hash[val]
    end
    @total_sum += val
  end

  def get_max
    @max
  end

  def get_min
    @min
  end

  def get_mean
    @total_sum / @count
  end

  def get_mode
    @mode
  end
end
