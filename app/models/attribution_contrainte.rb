class AttributionContrainte < ActiveRecord::Base
  belongs_to :contrainte
  belongs_to :interaction
end
