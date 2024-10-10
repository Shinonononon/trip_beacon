class CreateCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :charges do |t|
      t.decimal :amount
      t.references :chargeable, polymorphic: true, null: false, index: true

      t.timestamps
    end
  end
end
