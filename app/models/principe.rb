class Principe < ActiveRecord::Base
  attr_accessor :name
  attr_accessor :liste_classes # get this from habtm join table except principe name

  has_and_belongs_to_many :specialites
  has_and_belongs_to_many :classes
end
