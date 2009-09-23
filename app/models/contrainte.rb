class Contrainte < ActiveRecord::Base
  attr_accessor :name
  attr_accessor :acronyme
  attr_accessor :description

  has_many :attribution_contraintes
  has_many :interactions, :through => :attribution_contraintes
end
