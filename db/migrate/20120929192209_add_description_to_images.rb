class AddDescriptionToImages < ActiveRecord::Migration
  def change
    add_column :images, :description, :string
  end
end
