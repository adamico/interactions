class Classe < ActiveRecord::Base
  has_and_belongs_to_many :principes
  has_many :interactions
  has_many :inter_classes, :through => :interactions, :dependent => :destroy
  validates_uniqueness_of :name, :on => :create, :message => "ce nom existe déjà"
end
