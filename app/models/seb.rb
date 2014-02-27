class Seb < ActiveRecord::Base
  set_table_name  :seb
  set_primary_key :seb_id

  # Relationships
  

  # Constraints
  validates_numericality_of :train_level_id, :seb_secretary_id, :seb_chm_id, {:allow_nil=>true}
  validates_numericality_of :cmp_id, :speciality_id
  validates_presence_of :cmp_id, :speciality_id
end

