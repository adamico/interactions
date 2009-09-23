class Interaction < ActiveRecord::Base
  belongs_to :inter_classe, :class_name => "Classe"
  belongs_to :classe
  belongs_to :risque
  has_many :attribution_contraintes
  has_many :contraintes, :through => :attribution_contraintes
end
