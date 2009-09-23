class Risque < ActiveRecord::Base
  attr_accessor :libelle

  has_many :interactions
end
