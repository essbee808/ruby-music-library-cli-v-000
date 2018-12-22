#=> modules == "Behaviors"
#=> modules do NOT have instances!

module Concerns::Findable
  
  def find_by_name(name) #=> will return the first element in this array that makes the block true
    self.all.find{ |el| el.name == name }
  end
   
  def find_or_create_by_name(name)
    find_by_name(name) || create(name)
  end
  
end