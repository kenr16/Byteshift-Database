class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.date :day
      t.datetime :enter_time
      t.datetime :exit_time
      t.references :user, foreign_key: true
      t.references :beacon, foreign_key: true

      t.timestamps
    end
  end
end
