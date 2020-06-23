class Customer
  
  attr_accessor :name, :age 
  
  @@all = []
  
  def initialize(name, age)
    @name = name 
    @age = age 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  
end

sam = Customer.new("Sam", 27)
  
  sam.new_meal(pat, 50, 10)
  sam.new_meal(alex, 20, 3)