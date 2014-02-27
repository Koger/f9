class EduFormLng < ActiveRecord::Base
  set_table_name  :edu_form_lng
  set_primary_key :edu_form_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
end

