require '../../Hash/core/array'
class Array
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
class Hash
  def sort_inject
    _sorted_hash = {even: [], odd: []}
    self.inject(0) {
        |map, (key, value)|
      if key % 2 == 0
        _sorted_hash[:even] << value
      else
        _sorted_hash[:odd] << value
      end
    }
    print _sorted_hash
  end
end
