class CreateProjeccts < ActiveRecord::Migration
  def change
    create_table :projeccts do |t|
      t.string :name
      t.string :owner
      t.date :released_date
      t.text :Description

      t.timestamps
    end
  end
end
