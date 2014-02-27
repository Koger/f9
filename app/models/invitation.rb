class Invitation < ActiveRecord::Base
  set_table_name  :invitation
  set_primary_key :inv_id

  # Relationships
  

  # Constraints
  validates_numericality_of :inv_dept_id, :cirr_item_id, :inv_sess_id, {:allow_nil=>true}
  validates_numericality_of :edu_id, :inv_user_id
  validates_presence_of :edu_id, :inv_user_id, :inv_type, :inv_no, :inv_date, :inv_time
end

