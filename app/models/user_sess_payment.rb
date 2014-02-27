class UserSessPayment < ActiveRecord::Base
  set_table_name  :user_sess_payment
  set_primary_key :user_sess_payment_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_paid
    "true, false"
  end
  validates_inclusion_of :paid,
                         :in      => possible_values_for_paid, 
                         :message => "is not one of (#{possible_values_for_paid.join(', ')})"

  validates_numericality_of :sess_id, :user_privcard_id
  validates_presence_of :sess_id, :user_privcard_id, :usp_ins_date, :usp_ins_time, :usp_edt_date, :usp_edt_time
  validates_uniqueness_of :sess_id, :user_privcard_id
end

