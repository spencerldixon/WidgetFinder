class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :title
      t.decimal :price
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :condition

      t.timestamps
    end
  end
end
