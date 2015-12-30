require_relative '../../Hash/lib/array'
class Hash
  def sort_inject
    sorted_hash = { even: [], odd: [] }
    self.inject(0) do
    |map, (key, value)|
      if key % 2 == 0
        sorted_hash[:even] << value
      else
        sorted_hash[:odd] << value
      end
    end
    print sorted_hash
  end
end
