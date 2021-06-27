class CreateDrawings < ActiveRecord::Migration[6.1]
  def change
    create_table :drawings do |t|
      t.string :title
      t.string :creator
      t.integer :height
      t.integer :width
      t.boolean :checked_out, default: true

      t.timestamps
    end
  end
end
