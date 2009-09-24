class Principe < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "name can't be blank"

  has_and_belongs_to_many :specialites
  has_and_belongs_to_many :classes
end
