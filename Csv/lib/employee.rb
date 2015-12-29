class Employee
  attr_reader :name, :employee_id, :designation
  def initialize(name, employee_id, designation)
    @name = name
    @employee_id = employee_id
    @designation = designation
  end

  def write
    "#{@name} (Employee Id: #{@employee_id})"
  end
end
