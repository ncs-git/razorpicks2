class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :mascot
      t.string :city
      t.string :state
      t.integer :wins
      t.integer :loses
      t.string :url
      t.string :nickname
      t.references :conference, index: true
      t.references :pick, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
