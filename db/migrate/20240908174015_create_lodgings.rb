class CreateLodgings < ActiveRecord::Migration[6.1]
  def change
    create_table :lodgings do |t|
      t.date :check_in_date
      t.date :check_out_date
      t.time :check_in_time
      t.string :address

      t.timestamps
    end
  end
end
