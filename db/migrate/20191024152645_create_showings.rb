class CreateShowings < ActiveRecord::Migration[5.2]
  def change
    create_table :showings do |t|
      t.string :date
      t.string :time
      t.integer :movie_id

      t.timestamps
    end
  end
end
