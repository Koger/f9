class UserGroup < ActiveRecord::Base
  set_table_name  :user_group
  set_primary_key :user_group_id

  # Relationships
  

  # Constraints
  validates_numericality_of :user_type_id, :user_list_id
  validates_presence_of :user_type_id, :user_list_id
end

