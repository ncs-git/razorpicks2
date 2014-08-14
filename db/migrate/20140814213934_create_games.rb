class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_score
      t.integer :away_score
      t.datetime :played_on
      t.datetime :kickoff
      t.boolean :complete
      t.boolean :locked
      t.boolean :tiebreaker
      t.string :summary_url
      t.string :preview_url
      t.float :line
      t.string :name
      t.string :venue
      t.string :location
      t.references :week, index: true

      t.timestamps
    end
  end
end
