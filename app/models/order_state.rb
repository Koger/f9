class OrderState < ActiveRecord::Base
  set_table_name  :order_state
  set_primary_key :order_state_id

  # Relationships
  

  # Constraints
  validates_presence_of :order_state_name
  validates_uniqueness_of :order_state_id
end

