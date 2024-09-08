class CreateTransits < ActiveRecord::Migration[6.1]
  def change
    create_table :transits do |t|
      t.string :mode
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
