class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.date :date
      t.string :opponent_team_name
      t.string :city
      t.boolean :is_victory
      t.boolean :is_home_team
      t.integer :score
      t.integer :opponent_score
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
