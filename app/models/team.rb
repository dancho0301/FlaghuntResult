class Team < ApplicationRecord
  belongs_to  :training
  has_many    :team_members
  has_many    :members, through: :team_members

  accepts_nested_attributes_for :members, :allow_destroy => true


end
