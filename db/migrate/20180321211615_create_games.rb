class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer   :training_id
      t.integer   :game_seconds
      t.integer   :team1_id
      t.integer   :team2_id
      t.integer   :winner_id
      t.integer   :flaghunter_id
      t.timestamps
    end
  end
end
