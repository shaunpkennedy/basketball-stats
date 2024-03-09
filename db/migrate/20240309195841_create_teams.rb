class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :year
      t.integer :number

      t.timestamps
    end
  end
end
