class CntrlLng < ActiveRecord::Base
  set_table_name  :cntrl_lng
  set_primary_key :cntrl_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id, :cntrl_short_name, :cntrl_full_name
  validates_uniqueness_of :lng_id, :cntrl_full_name, :lng_id, :cntrl_short_name
end

