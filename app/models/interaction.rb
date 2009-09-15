class Interaction < ActiveRecord::Base

  belongs_to :inter_principe, :class_name => "Principe"
  belongs_to :principe

  belongs_to :contrainte
end
