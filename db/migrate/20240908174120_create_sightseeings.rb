class CreateSightseeings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightseeings do |t|

      t.timestamps
    end
  end
end
