class DeptLng < ActiveRecord::Base
  set_table_name  :dept_lng
  set_primary_key :dept_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
  validates_uniqueness_of :lng_id, :dept_name
end

