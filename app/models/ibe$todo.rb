class Ibe$todo < ActiveRecord::Base
  set_table_name  :"ibe$todo"
  set_primary_key :item_id

  # Relationships
  

  # Constraints
  validates_numericality_of :object_type, {:allow_nil=>true}
  validates_numericality_of :item_priority, :item_state
  validates_presence_of :item_priority, :item_state, :item_caption, :item_timestamp, :item_owner
end

