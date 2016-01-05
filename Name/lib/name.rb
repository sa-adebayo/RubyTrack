require_relative 'empty_value_exception'
require_relative 'case_exception'
class Name
  def validate(first_name = '', last_name = '')
    if first_name.nil? || first_name =~ /^\s*$/
      raise EmptyValueException, 'You did not supplied a first name! What do you think you are doing?'
    elsif last_name.nil? || last_name =~ /^\s*$/
      raise EmptyValueException, 'You did not supplied a last name! Do you think I am dumb?'
    elsif first_name[0].match(/[[:lower:]]/)
      raise CaseException, 'First name did not start with a Capital letter.'
    else
      puts 'What you supplied was validated successfully.'
      @first_name = first_name
      @last_name = last_name
    end
  end
end
