class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(self.network)
    Network.new(self.network.call_letters)
  end 

end