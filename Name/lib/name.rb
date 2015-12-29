require_relative 'empty_value_exception'
require_relative 'case_exception'
$account_number = 0
class Name
  attr_reader :first_name, :last_name

  def initialize(first_name = '', last_name = '')
    @first_name = first_name
    @last_name = last_name
  end

  def validate
    if @first_name.nil? || @first_name =~ /^\s*$/
      raise EmptyValueException.new('You did not supplied a first name! What do you think you are doing?')
    elsif @last_name.nil? || @last_name =~ /^\s*$/
      raise EmptyValueException.new('You did not supplied a last name! Do you think I am dumb?')
    elsif @first_name[0].match(/[[:lower:]]/)
      raise CaseException.new('First name did not start with a Capital letter.')
    else
      puts 'What you supplied was validated successfully.'
    end
  end
end
