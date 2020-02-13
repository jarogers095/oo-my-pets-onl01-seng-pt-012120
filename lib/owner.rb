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
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
  end
  
  def walk_dogs()
    self.dogs.each {|dog| dog.mood == "happy"}
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