class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :description
      t.belongs_to :player, index: true, foreign_key: true
      t.string :pic_url
      t.text :faq
      t.integer :frequency

      t.timestamps null: false
    end
  end
end
