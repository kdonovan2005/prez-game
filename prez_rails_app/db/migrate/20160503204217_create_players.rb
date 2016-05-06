class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.belongs_to :game, index: true, foreign_key: true
      t.string :tagline
      t.string :pic_url
      t.integer :tot_wins, default: 0

      t.timestamps null: false
    end
  end
end
