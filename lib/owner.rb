class Owner
  @@all = []
  attr_reader(:name, :species)
  
  def initialize(owner_name)
    @name = owner_name
    @species = "human"
  end
  
  def say_species()
    puts @species
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