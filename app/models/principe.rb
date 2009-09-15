class Principe < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :specialite
  
  #add self join stuff
  #
  has_many :interactions
  has_many :inter_principes, :through => :interactions, :dependent => :destroy
  
end
