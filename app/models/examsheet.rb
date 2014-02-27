class Examsheet < ActiveRecord::Base
  set_table_name  :examsheet
  set_primary_key :examsheet_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_recieve_chk
    "true, false"
  end
  validates_inclusion_of :recieve_chk,
                         :in      => possible_values_for_recieve_chk, 
                         :message => "is not one of (#{possible_values_for_recieve_chk.join(', ')})"

    def self.possible_values_for_examsheet_printed
    "true, false"
  end
  validates_inclusion_of :examsheet_printed,
                         :in      => possible_values_for_examsheet_printed, 
                         :message => "is not one of (#{possible_values_for_examsheet_printed.join(', ')})"

  validates_numericality_of :dept_pers_id, {:allow_nil=>true}
  validates_numericality_of :agroup_id, :cirr_item_id
  validates_presence_of :agroup_id, :cirr_item_id, :examsheet_date, :ins_date, :ins_time
  validates_uniqueness_of :cirr_item_id, :dept_pers_id, :agroup_id
end

