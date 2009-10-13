class Contrainte < ActiveRecord::Base
  has_many :attribution_contraintes
  has_many :interactions, :through => :attribution_contraintes
end
