class Game < ApplicationRecord
  belongs_to :training
  belongs_to :team1, class_name: Team, foreign_key: :team1_id
  belongs_to :team2, class_name: Team, foreign_key: :team2_id
  belongs_to :winner, class_name: Team, foreign_key: :winner_id
  belongs_to :flaghunter, class_name: Member, foreign_key: :flaghunter_id


end
