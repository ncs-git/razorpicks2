class Pick < ActiveRecord::Base
  belongs_to :user
  belongs_to :week
  belongs_to :game
  has_one :team
end
