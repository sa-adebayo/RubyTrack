require 'time'
class String
  def parse_to_time_seconds
    real_time = Time.parse(self)
    # 3600 seconds makes an hour and 60 seconds makes a minute
    ((3600 * real_time.hour) + (60 * real_time.min) + (real_time.sec))
  end
end
