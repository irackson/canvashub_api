class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :data_url
      t.string :commit_message
      t.string :commit_author
      t.timestamps
    end
  end
end
