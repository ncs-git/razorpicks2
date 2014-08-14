class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :wins
      t.integer :loses
      t.integer :tiebreak_score
      t.references :week, index: true
      t.references :season, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
