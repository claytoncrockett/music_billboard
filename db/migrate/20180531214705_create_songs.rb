class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :us_rank
      t.integer :eu_rank
      t.belongs_to :chart, foreign_key: true
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
