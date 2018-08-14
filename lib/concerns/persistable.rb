module Persistant 
  module InstanceMethods 
    
  end 
  
  
  module ClassMethods
    def save 
      self.class.all << self
    end
  
    def self. destroy_all 
      self.all.clear
    end
  end 
end