class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :num_players
      t.decimal :skill_lvl

      t.timestamps null: false
    end
  end
end
