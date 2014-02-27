class Region < ActiveRecord::Base
  set_table_name  :region

  # Relationships
  

  # Constraints
  validates_numericality_of :owner, :grou_, :start_pstidx, :finish_pstidx, :pstidx_qty, {:allow_nil=>true}
  validates_numericality_of :region_order
  validates_presence_of :region_order
  validates_uniqueness_of :name, :start_pstidx, :finish_pstidx
end

