class AorderItem < ActiveRecord::Base
  set_table_name  :aorder_item
  set_primary_key :aorder_item_id

  # Relationships
  

  # Constraints
  validates_numericality_of :faculty_id, :school_id, :aoi_no, {:allow_nil=>true}
  validates_numericality_of :aorder_id, :edu_id, :order_action_type_id, :contract_id
  validates_presence_of :aorder_id, :edu_id, :order_action_type_id, :contract_id, :aoi_edt_date, :aoi_ins_date, :aoi_ins_time
  validates_uniqueness_of :aorder_id, :edu_id
end

