class CntrlTypeLng < ActiveRecord::Base
  set_table_name  :cntrl_type_lng
  set_primary_key :cntrl_type_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id, :cntrl_type_full_name, :cntrl_type_short_name
end

