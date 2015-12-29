require 'csv'
require_relative 'employee'
class CsvReader
  def CsvReader.read(file)
    line_count = 0
    employee = []
    puts '..... I am reading the file here .......'
    CSV.foreach(file) do |employee_information|
      employee[line_count] = Employee.new(employee_information[0], employee_information[1], employee_information[2])
      line_count += 1
    end

    puts '..... Sorting employee in the csv files ......'
    employee.sort!{|a, b| a.designation <=> b.designation }
    employee_sorted = {}
    employee.each do |e|
      if employee_sorted.has_key?(e.designation)
        employee_sorted[e.designation] << e
      else
        employee_sorted[e.designation] = [e]
      end
    end
    puts '....... started writing into file ........'
    File.open('sorted_employee', 'w') do |file|
      employee_sorted.each do |key, grouped_employee|
        file.print "#{key} \n"
        grouped_employee.each do |each_employee|
          file.print each_employee.write + "\n"
        end
      end
    end
  end
end
