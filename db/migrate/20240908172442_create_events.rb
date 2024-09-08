class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :start_time
      t.string :location
      t.text :description
      t.references :plan, null: false, foreign_key: true
      t.string :event_type

      t.timestamps
    end
  end
end
