class MyHashTwo

  define_method(:initialize) do
    #some cool code here
    @hash = Array.new()
  end

  define_method(:fetch) do |key|
    @hash.each() do |pair|
      if key == pair[0]
        return pair[1]
      end
    end
    nil
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
end
