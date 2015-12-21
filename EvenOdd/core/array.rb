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
    print _hash
  end
end