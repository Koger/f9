class CmpSpeciality < ActiveRecord::Base
  set_table_name  :cmp_speciality
  set_primary_key :cmp_speciality_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_print_schedule
    "true, false"
  end
  validates_inclusion_of :print_schedule,
                         :in      => possible_values_for_print_schedule, 
                         :message => "is not one of (#{possible_values_for_print_schedule.join(', ')})"

  validates_numericality_of :stu_qty_now, :lic_graduate_qty, {:allow_nil=>true}
  validates_numericality_of :cmp_id, :speciality_id, :train_level_id
  validates_presence_of :cmp_id, :speciality_id, :train_level_id, :cmp_speciality_ins_date, :cmp_speciality_edt_date
  validates_uniqueness_of :cmp_id, :speciality_id, :train_level_id
end

