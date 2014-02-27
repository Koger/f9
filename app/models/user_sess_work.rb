class UserSessWork < ActiveRecord::Base
  set_table_name  :user_sess_work
  set_primary_key :user_sess_work_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_paid
    "true, false"
  end
  validates_inclusion_of :paid,
                         :in      => possible_values_for_paid, 
                         :message => "is not one of (#{possible_values_for_paid.join(', ')})"

  validates_numericality_of :contract_cntrl_id
  validates_presence_of :contract_cntrl_id
end

