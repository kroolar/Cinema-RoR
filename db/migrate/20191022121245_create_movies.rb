class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :cast
      t.text :description
      t.integer :duration
    end
  end
end
