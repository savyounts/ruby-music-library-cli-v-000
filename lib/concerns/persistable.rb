module Concerns::Persistant 
  module InstanceMethods 
    def save 
      self.class.all << self
    end
  end 
  
  
  module ClassMethods
  
    def destroy_all 
      self.all.clear
    end
  end 
end