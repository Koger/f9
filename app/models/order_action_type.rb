class OrderActionType < ActiveRecord::Base
  set_table_name  :order_action_type
  set_primary_key :order_action_type_id

  # Relationships
  

  # Constraints
  validates_presence_of :order_action_type_name
  validates_uniqueness_of :order_action_type_id
end

