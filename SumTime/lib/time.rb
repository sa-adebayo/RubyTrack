require 'time'
require_relative 'string'
class Time
  def Time.sum(first_time, second_time)
    total_seconds = first_time.parse_to_time_seconds + second_time.parse_to_time_seconds
    summed_time = String('')
    summed_time = '1 day & ' if total_seconds > 24 * 3600
    summed_time += Time.at(total_seconds).utc.strftime('%H:%M:%S')
    summed_time
  end

  def Time.validate(time)
    time.match(/^(([01]?\d)|(2[0-3]))([:]([0-5]?\d)){2}$/)
  end

  def Time.parse_to_seconds
    real_time = Time.parse(self)
    # 3600 seconds makes an hour and 60 seconds makes a minute
    ((3600 * real_time.hour) + (60 * real_time.min) + (real_time.sec))
  end
end
