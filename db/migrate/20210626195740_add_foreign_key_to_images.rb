class AddForeignKeyToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :drawing_id, :integer
  end
end
