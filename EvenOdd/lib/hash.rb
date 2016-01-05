require_relative '../../Hash/lib/array'
class Hash
  def sort_inject
    sorted_hash = Hash.new { |hash, key| hash[key] = [] }
    inject(0) do
    |map, (key, value)|
      if Integer(key).even?
        sorted_hash[:even] << value
      else
        sorted_hash[:odd] << value
      end
    end
    print sorted_hash
  end
end
