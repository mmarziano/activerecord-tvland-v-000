class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(network)
    binding.pry
    Network.new(network)
  end 

end