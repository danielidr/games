class AddRulesToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :rules, :text
  end
end
