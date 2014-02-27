class Ibe$versionHistory < ActiveRecord::Base
  set_table_name  :"ibe$version_history"
  set_primary_key :"ibe$vh_id"

  # Relationships
  

  # Constraints
  validates_numericality_of :"ibe$vh_object_type"
  validates_presence_of :"ibe$vh_modify_date", :"ibe$vh_object_type", :"ibe$vh_object_name"
end

