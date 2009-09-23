class AttributionContrainte < ActiveRecord::Base
  attr_accessor :cat

  belongs_to :contrainte
  belongs_to :interaction
end
