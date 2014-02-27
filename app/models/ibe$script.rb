class Ibe$script < ActiveRecord::Base
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :"ibe$script_action_id", {:allow_nil=>true}
  validates_presence_of :"ibe$script_name", :"ibe$script_type", :"ibe$script_state"
  validates_uniqueness_of :"ibe$script_name"
end

