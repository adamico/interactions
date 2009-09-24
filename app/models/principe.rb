class Principe < ActiveRecord::Base
  has_and_belongs_to_many :specialites
  has_and_belongs_to_many :classes
end
