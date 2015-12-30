class Array
  def to_hash
    hash = Hash.new
    for i in self do
      if hash.has_key?(i.to_s.length)
        hash[i.to_s.length] << i
      else
        hash[i.to_s.length] = [i]
      end
    end
    hash
  end

  def sort_hash_to_even_odd
    to_hash     = self.to_hash
    keys        = to_hash.keys
    sorted_hash = { even: [], odd: [] }
    keys.each do |k|
      if k % 2 == 0
        sorted_hash[:even] << to_hash[k]
      else
        sorted_hash[:odd] << to_hash[k]
      end
    end
    sorted_hash
  end
end
