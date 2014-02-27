class WorkTopic < ActiveRecord::Base
  set_table_name  :work_topic
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :wtid, :workid, :persid, :topicid, {:allow_nil=>true}
end

