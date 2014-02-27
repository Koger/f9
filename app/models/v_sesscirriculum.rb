class VSesscirriculum < ActiveRecord::Base
  set_table_name  :v_sesscirriculum
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :cirr_item_id, :speciality_id, :sess_id, :subj_id, :qty_hours, :control_type, :dept_id
  validates_presence_of :cirr_item_id, :speciality_id, :sess_id, :subj_id, :qty_hours, :control_type, :dept_id
end

