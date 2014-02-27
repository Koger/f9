class Aorder < ActiveRecord::Base
  set_table_name  :aorder
  set_primary_key :aorder_id

  # Relationships
  

  # Constraints
  validates_numericality_of :user_id, :aorder_sub_type_id, {:allow_nil=>true}
  validates_numericality_of :order_type_id, :order_state_id, :cmp_id
  validates_presence_of :order_type_id, :order_state_id, :cmp_id, :aorder_no, :ins_date, :edt_date, :ins_time, :edt_time
end

