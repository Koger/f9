class PhoneNoType < ActiveRecord::Base
  set_table_name  :phone_no_type
  set_primary_key :phone_no_type_id

  # Relationships
  

  # Constraints
  validates_numericality_of :phone_no_type_pref, {:allow_nil=>true}
end

