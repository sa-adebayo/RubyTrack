class Array
  def to_hash
    _hash = Hash.new
    for i in self do
      if _hash.has_key?(i.to_s.length)
        _hash[i.to_s.length] << i
      else
        _hash[i.to_s.length] = [i]
      end
    end
    return _hash
  end

  def sort_hash_to_even_odd
    _to_hash = self.to_hash
    _keys = _to_hash.keys
    _sorted_hash = { even: [], odd: []}
    _keys.each do |k|
      if k % 2 == 0
        _sorted_hash[:even] << _to_hash[k]
      else
        _sorted_hash[:odd] << _to_hash[k]
      end
    end
    _sorted_hash
  end
end