class Result < ActiveRecord::Base
  belongs_to :week
  belongs_to :season
  belongs_to :user
end
