class Owner
  @@assert_select_email
  attr_reader(:name, :species)
  
  def initialize(owner_name)
    @name = owner_name
    @species = "human"
  end
  
  def say_species()
    puts @species
  end
  
  
  
end