class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_show  
    self.cla
  end 

end