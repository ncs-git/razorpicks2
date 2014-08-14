class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.datetime :start
      t.datetime :end
      t.datetime :due_by
      t.string :name
      t.boolean :current
      t.boolean :completed
      t.boolean :locked
      t.references :season, index: true

      t.timestamps
    end
  end
end
