class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(t)
    binding.pry
    Network.new(self.network.call_letters)
  end 

end