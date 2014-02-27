class RoomPhone < ActiveRecord::Base
  set_table_name  :room_phone
  set_primary_key :room_phone_id

  # Relationships
  

  # Constraints
  validates_numericality_of :room_id, :phone_no_id
  validates_presence_of :room_id, :phone_no_id
  validates_uniqueness_of :room_id, :phone_no_id
end

