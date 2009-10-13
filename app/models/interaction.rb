class Interaction < ActiveRecord::Base
  belongs_to :inter_classe, :class_name => "Classe"
  belongs_to :classe
  belongs_to :risque
  has_many :attribution_contraintes
  has_many :contraintes, :through => :attribution_contraintes


  accepts_nested_attributes_for :attribution_contraintes,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, :allow_destroy => true
end
