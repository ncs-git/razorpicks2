class Team < ActiveRecord::Base
  belongs_to :conference
  belongs_to :pick
  belongs_to :game
end
