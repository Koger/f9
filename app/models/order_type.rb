class OrderType < ActiveRecord::Base
  set_table_name  :order_type
  set_primary_key :order_type_id

  # Relationships
  

  # Constraints
  validates_presence_of :order_type_name
  validates_uniqueness_of :order_type_id
end

