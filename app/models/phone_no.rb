class PhoneNo < ActiveRecord::Base
  set_table_name  :phone_no
  set_primary_key :phone_no_id

  # Relationships
  

  # Constraints
  validates_numericality_of :phone, {:allow_nil=>true}
  validates_numericality_of :phone_no_type_id
  validates_presence_of :phone_no_type_id
end

