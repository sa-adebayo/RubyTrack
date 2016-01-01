class Array
  def to_hash_of_value_length
    hash = Hash.new{ |hash, key| hash[key] = [] }
    for i in self do
      #hash[i.to_s.length] ||= []
      hash[i.to_s.length] << i
    end
    hash
  end

  def sort_hash_to_even_odd
    to_hash     = to_hash_of_value_length
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
