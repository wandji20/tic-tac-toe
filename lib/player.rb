class Player
  attr_accessor :name
  attr_accessor :sign

  def initialize(name)
    @name = name
    @sign = nil
  end

  def valid_sign?
    @sign.length == 1 && @sign =~ /[A-Za-z]/ && @sign != ~ /\s/ && !@sign.nil? ? true : false
  end

  def valid_name?
    @name =~ /[A-Za-z]/ && @name != ~ /\s/ && !@name.nil? ? true : false
  end
end
