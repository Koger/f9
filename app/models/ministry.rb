class Ministry < ActiveRecord::Base
  set_table_name  :ministry
  set_primary_key :ministry_id

  # Relationships
  

  # Constraints
  validates_uniqueness_of :dp_series, :ministry_name, :ministry_id
end

