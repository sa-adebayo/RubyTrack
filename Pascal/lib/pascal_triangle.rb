class PascalTriangle
  def process(limit = 8)
    limit = limit == 0 ? 8 : limit
    _next_row = []
    _current_row = [1]
    (1..limit).each { |i|
      puts _current_row.inspect
      _next_row = Array.new(0)
      _next_row[0], _next_row[i] = _current_row.first, _current_row.last
      (1...i).each { |j|
        _next_row[j] = (_current_row[j-1].nil? ? 0 : _current_row[j-1]) + (_current_row[j].nil? ? 0 : _current_row[j])
      }
      _current_row = _next_row.clone
    }
  end
  def process_yield(limit = 8)
    limit = limit == 0 ? 8 : limit
    _next_row = []
    _current_row = [1]
    (1..limit).each { |i|
      yield _current_row
      _next_row = Array.new(0)
      _next_row[0], _next_row[i] = _current_row.first, _current_row.last
      (1...i).each { |j|
        _next_row[j] = (_current_row[j-1].nil? ? 0 : _current_row[j-1]) + (_current_row[j].nil? ? 0 : _current_row[j])
      }
      _current_row = _next_row.clone
    }
  end
end
