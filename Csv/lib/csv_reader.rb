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

    puts '..... partitioning csv files ......'
    employee = employee.partition { |employee| employee.designation =~ /Designer/ }

    puts '....... started writing into file ........'
    File.open('sorted_employee', 'w') do |file|
      file.print "Designers \n"
      employee[0].each {|designers| file.print designers.write + "\n" }
      file.print "\nDevelopers \n"
      employee[1].each {|developers| file.print developers.write + "\n" }
    end
  end
end