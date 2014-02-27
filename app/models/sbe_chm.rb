class SbeChm < ActiveRecord::Base
  set_table_name  :sbe_chm
  set_primary_key :sbe_chm_id

  # Relationships
  

  # Constraints
  validates_numericality_of :pers_id
  validates_presence_of :pers_id
end

