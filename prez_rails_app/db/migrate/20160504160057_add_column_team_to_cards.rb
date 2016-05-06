class AddColumnTeamToCards < ActiveRecord::Migration
  def change
    add_column :cards, :team, :string
  end
end
