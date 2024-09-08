class CreateOthers < ActiveRecord::Migration[6.1]
  def change
    create_table :others do |t|
      t.datetime :start_time

      t.timestamps
    end
  end
end
