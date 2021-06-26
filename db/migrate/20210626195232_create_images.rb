class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :reds, array: true, default: []
      t.integer :greens, array: true, default: []
      t.integer :blues, array: true, default: []
      t.integer :alphas, array: true, default: []

      t.timestamps
    end
  end
end
