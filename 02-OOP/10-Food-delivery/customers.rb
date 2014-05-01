class Customers

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
  end

  def orders
  end

  def to_s
    "#{name} : #{address}
               #{phone}"
  end

end