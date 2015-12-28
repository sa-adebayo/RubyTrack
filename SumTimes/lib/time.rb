require 'time'
require_relative 'string'
class Time
  def Time.sum(*times)
    #puts 'times: ' + times.inspect
    total_seconds = Integer(0)
    times.each do |time|
      #puts 'time: ' + time.inspect + ' belongs to class ' + time.class.to_s
      total_seconds += time.to_s.parse_to_time_seconds
    end
    days = (total_seconds / (24 * 3600))
    summed_time = String('')
    summed_time = (days == 1) ? '1 day & ' : (days.to_s + ' days & ') if total_seconds > (24 * 3600)
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
