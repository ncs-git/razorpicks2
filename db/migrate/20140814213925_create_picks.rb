class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :home_score
      t.integer :away_score
      t.references :user, index: true
      t.references :week, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
