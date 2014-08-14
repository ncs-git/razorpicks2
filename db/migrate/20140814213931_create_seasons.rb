class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.boolean :current

      t.timestamps
    end
  end
end
