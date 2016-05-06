class ChangeColumnSkillLvl < ActiveRecord::Migration
  def change
    change_column :games, :skill_lvl, :integer
  end
end
