class CreateViewings < ActiveRecord::Migration[5.1]
  def change
    create_table :viewings do |t|
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: true
      t.datetime :recently_watched_at
      t.integer :watched_count
      t.boolean :liked

      t.timestamps
    end
  end
end
