class Specialite < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :principe
  belongs_to :classe
end
