class Player
  attr_accessor :name
  attr_reader :sign

  def initialize(name, sign)
    @name = name
    @sign = sign
  end

  def print()
    puts "Name : #{@name}, Sign: #{@sign}"
  end
end
