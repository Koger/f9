class SebMember < ActiveRecord::Base
  set_table_name  :seb_member
  set_primary_key :seb_member_id

  # Relationships
  

  # Constraints
  validates_numericality_of :seb_member_no, {:allow_nil=>true}
  validates_numericality_of :card_id, :seb_id
  validates_presence_of :card_id, :seb_id
end

