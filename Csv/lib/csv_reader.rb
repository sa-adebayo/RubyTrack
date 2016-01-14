require 'csv'
require_relative 'employee'
class CsvReader
  def self.read(file)
    employee = []
    puts '..... I am reading the file here .......'
    file = CSV.read(file, headers: true)
    file.each do |employee_information|
      employee << Employee.new(employee_information[0], employee_information[1], employee_information[2])
    end
    employee_sorted = sort(employee)
    write(employee_sorted)
  end

  def self.sort(employee)
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
    employee_sorted
  end

  def self.write(employee_sorted)
    puts '....... started writing into file ........'
    File.open('sorted_employee', 'w') do |file_writer|
      employee_sorted.each do |key, grouped_employee|
        file_writer.puts grouped_employee.length > 1 ? "#{key}s " : "#{key} "
        grouped_employee.each do |each_employee|
          file_writer.puts each_employee.write
        end
      end
    end
  end

  private_class_method :sort, :write
end
