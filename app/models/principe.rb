class Principe < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "name can't be blank"

  has_and_belongs_to_many :specialites
  has_and_belongs_to_many :classes

  accepts_nested_attributes_for :classes,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, :allow_destroy => true
  
end
