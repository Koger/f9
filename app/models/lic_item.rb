class LicItem < ActiveRecord::Base
  set_table_name  :lic_item
  set_primary_key :lic_item_id

  # Relationships
  

  # Constraints
  validates_numericality_of :license_id, :speciality_id, :train_level_id, :edu_form_id, :lic_item_graduate_qty
  validates_presence_of :license_id, :speciality_id, :train_level_id, :edu_form_id, :lic_item_graduate_qty, :lic_item_exp_date
  validates_uniqueness_of :license_id, :speciality_id, :train_level_id, :edu_form_id
end

