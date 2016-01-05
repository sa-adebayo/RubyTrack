class Integer
  def process_pascal_triangle
    limit       = self == 0 ? 8 : self
    current_row = [1]
    (1..limit).each do |i|
      puts current_row.inspect
      next_row                 = []
      next_row[0], next_row[i] = current_row.first, current_row.last
      (1...i).each do |j|
        next_row[j] = (current_row[j-1].nil? ? 0 : current_row[j-1]) + (current_row[j].nil? ? 0 : current_row[j])
      end
      current_row = next_row
    end
  end

  def generate_pascal_triangle
    limit       = self == 0 ? 8 : self
    current_row = [1]
    (1..limit).each do |i|
      yield current_row
      next_row                 = []
      next_row[0], next_row[i] = current_row.first, current_row.last
      (1...i).each do |j|
        next_row[j] = (current_row[j-1].nil? ? 0 : current_row[j-1]) + (current_row[j].nil? ? 0 : current_row[j])
      end
      current_row = next_row
    end
  end
end
