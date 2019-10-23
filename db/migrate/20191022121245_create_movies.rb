class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.float :rate
    end
  end
end
