class License < ActiveRecord::Base
  set_table_name  :license
  set_primary_key :license_id

  # Relationships
  

  # Constraints
  validates_presence_of :license_date
end

