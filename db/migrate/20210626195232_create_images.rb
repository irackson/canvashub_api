class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :bytes, array: true, default: []
      t.timestamps
    end
  end
end
