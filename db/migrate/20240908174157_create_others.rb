class CreateOthers < ActiveRecord::Migration[6.1]
  def change
    create_table :others do |t|

      t.timestamps
    end
  end
end
