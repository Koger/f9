class UserList < ActiveRecord::Base
  set_table_name  :user_list
  set_primary_key :user_list_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_activ
    "true, false"
  end
  validates_inclusion_of :activ,
                         :in      => possible_values_for_activ, 
                         :message => "is not one of (#{possible_values_for_activ.join(', ')})"

  validates_numericality_of :rights, :appsmask, {:allow_nil=>true}
  validates_numericality_of :card_id
  validates_presence_of :card_id, :user_list_name, :lastedit, :user_list_ins_date
  validates_uniqueness_of :user_list_name
end

