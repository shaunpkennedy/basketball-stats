class CreateStats < ActiveRecord::Migration[7.1]
  def change
    create_table :stats do |t|
      t.integer :points_scored
      t.integer :field_goals_made
      t.integer :field_goals_attempted
      t.integer :two_pointers_made
      t.integer :two_pointers_attempted
      t.integer :three_pointers_made
      t.integer :three_pointers_attempted
      t.integer :free_throws_made
      t.integer :free_throws_attempted
      t.integer :assists
      t.integer :rebounds
      t.integer :steals
      t.integer :blocks
      t.integer :fouls
      t.boolean :started_game
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
