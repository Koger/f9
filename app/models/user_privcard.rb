class UserPrivcard < ActiveRecord::Base
  set_table_name  :user_privcard
  set_primary_key :user_privcard_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_user_privcard_mark
    "true, false"
  end
  validates_inclusion_of :user_privcard_mark,
                         :in      => possible_values_for_user_privcard_mark, 
                         :message => "is not one of (#{possible_values_for_user_privcard_mark.join(', ')})"

    def self.possible_values_for_rec_book_present
    "true, false"
  end
  validates_inclusion_of :rec_book_present,
                         :in      => possible_values_for_rec_book_present, 
                         :message => "is not one of (#{possible_values_for_rec_book_present.join(', ')})"

  validates_numericality_of :user_list_id, :privcard_id
  validates_presence_of :user_list_id, :privcard_id, :user_privcard_ins_date, :user_privcard_ins_time, :user_privcard_edt_date, :user_privcard_edt_time
end

