class Array
  def to_hash_of_value_length
    hash = Hash.new { |hash, key| hash[key] = [] }
    for i in self do
      hash[i.to_s.length] << i
    end
    hash
  end

  def sort_hash_to_even_odd
    to_hash     = to_hash_of_value_length
    sorted_hash = { even: [], odd: [] }
    to_hash.each do |k, v|
      if Integer(k).even?
        sorted_hash[:even] << v
      else
        sorted_hash[:odd] << v
      end
    end
    sorted_hash
  end
end
