class Task < ActiveRecord::Base
  attr_accessible :name, :projecct_id
  belongs_to :projecct
end
