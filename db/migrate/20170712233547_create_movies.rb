class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.string :location_filmed
      t.integer :length

      t.timestamps
    end
  end
end
