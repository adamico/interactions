class Specialite < ActiveRecord::Base
  has_and_belongs_to_many :principes
end
