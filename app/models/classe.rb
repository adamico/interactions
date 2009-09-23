class Classe < ActiveRecord::Base
  attr_accessor :name
  attr_accessor :liste_principes #get this from habtm join table
  attr_accessor :description

  has_and_belongs_to_many :principes
  has_many :interactions
  has_many :inter_classes, :through => :interactions, :dependent => :destroy
end
