class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(network)
  
   self.network = Network.new(network)
  end 

end