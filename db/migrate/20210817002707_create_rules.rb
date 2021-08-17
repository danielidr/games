class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.text :text_rules
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
