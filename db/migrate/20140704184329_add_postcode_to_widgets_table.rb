class AddPostcodeToWidgetsTable < ActiveRecord::Migration
  def change
  	add_column :widgets, :postcode, :string
  end
end
