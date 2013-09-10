class AddSubdomainToProjecct < ActiveRecord::Migration
  def change
    add_column :projeccts, :subdomain, :string
  end
end
