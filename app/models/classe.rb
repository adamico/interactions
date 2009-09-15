class Classe < ActiveRecord::Base
  attr_accessible :name

  has_many :specialites
  
end
