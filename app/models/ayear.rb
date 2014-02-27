class Ayear < ActiveRecord::Base
  set_table_name  :ayear
  set_primary_key :ayear_id

  # Relationships
  

  # Constraints
  validates_numericality_of :start_year
  validates_presence_of :start_year
  validates_uniqueness_of :start_year, :ayear_id
end

