class Owner
  @@all = []
  attr_reader(:name, :species)
  
  def initialize(owner_name)
    @name = owner_name
    @species = "human"
    @@all << self
  end
  
  def say_species()
    return "I am a #{species}."
  end
  
  def buy_cat()
    
  end
  
  def buy_dog()
    
  end
  
  def cats()
    return Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs()
    return Dog.all.select{|cat| cat.owner == self}
  end
    
  
  def self.all()
    return @@all
  end
  
  def self.count()
    return @@all.size
  end
  
  def self.reset_all()
    @@all.clear
  end
end