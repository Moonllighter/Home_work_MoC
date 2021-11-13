class User
  attr_accessor :first_name, :last_name, :email
  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name  = last_name
    @email      = email
  end
  def full_name
    "#{@first_name} #{@last_name}"
  end
  def is_valid_email?
    case @email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    when nil
      false
    else
      true
    end  
  end
  def valid(name)
    if name == nil
      " can not be empty"
    elsif !name.is_a?(String)
      " be a string"
    elsif name =~ /^.{0,2}$/
      'value must be at least three characters'
    else
      true
    end
  end
  def valid_emaile
    if @email == nil
      'email can not be empty'
    elsif !@email.is_a?(String)
      'email must be a string'
    elsif !is_valid_email?
      'email is invalid'
    else
      true
    end
  end
  def errors
  arr = ["first_name #{valid(@first_name)}", "last_name #{valid(@last_name)}", "email #{valid_emaile}"]
  end
end