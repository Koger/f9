class School < ActiveRecord::Base
  set_table_name  :school
  set_primary_key :school_id

  # Relationships
  

  # Constraints
  validates_numericality_of :parent_id, {:allow_nil=>true}
  validates_numericality_of :nztyp_id
  validates_presence_of :region_id, :ministry_id, :nztyp_id
  validates_uniqueness_of :school_id
end

