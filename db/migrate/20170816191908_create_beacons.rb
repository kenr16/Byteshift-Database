class CreateBeacons < ActiveRecord::Migration[5.1]
  def change
    create_table :beacons do |t|
      t.string :name
      t.string :identification_number

      t.timestamps
    end
  end
end
