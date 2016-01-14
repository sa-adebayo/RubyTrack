require 'time'
require_relative 'integer'
class Time
  TIME_REGEX = /^(([01]?\d)|(2[0-3]))([:]([0-5]?\d)){2}$/
  def self.sum(*times)
    total_seconds = 0
    times.each do |time|
      total_seconds += Time.parse_to_seconds(time)
    end
    days = (total_seconds / (24 * 3600))
    summed_time = ''
    summed_time = days.pluralize('day') + ' & ' if total_seconds > (24 * 3600)
    summed_time += Time.at(total_seconds).utc.strftime('%H:%M:%S')
    summed_time
  end

  def self.valid?(time)
    time.match(TIME_REGEX)
  end

  def self.parse_to_seconds(time)
    real_time = Time.parse(time)
    # 3600 seconds makes an hour and 60 seconds makes a minute
    ((3600 * real_time.hour) + (60 * real_time.min) + (real_time.sec))
  end
end
