class Topic < ActiveRecord::Base
  set_table_name  :topic
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :topicid, :tnum, {:allow_nil=>true}
end

