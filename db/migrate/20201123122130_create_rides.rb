class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.datetime :time
      t.string :location
      t.text :notes
      t.belongs_to :horse, foreign_key: true
      t.belongs_to :rider, foreign_key: true

      t.timestamps
    end
  end
end
