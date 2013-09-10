class Projecct < ActiveRecord::Base
  attr_accessible :Description, :name, :owner, :released_date, :subdomain
  has_many :tasks

  # def_index do
  #   indexes Description
  #   indexes :name, sortable: true
  #   indexes owner  	
  # end
end
