class MyHash

  attr_reader :hash

  define_method(:initialize) do
    #some cool code here
    @hash = Array.new()
  end

  define_method(:fetch) do |key|
    @hash.each() do |first, second|
      if first == key
        return second
      end
    end
  end

  define_method(:store) do |key, value|
    @hash.push([key, value])
  end

  define_method(:has_key?) do |key|
    @hash.each() do |first, second|
      if first == key
        return true
      end
      return false
    end
  end

  define_method(:merge) do |merge_hash|
    @hash.concat(merge_hash.hash)
    
  end
end
