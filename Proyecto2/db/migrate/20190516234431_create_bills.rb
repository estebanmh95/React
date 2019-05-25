class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :edificio, foreign_key: true
      t.string :ptype
      t.string :pdate

      t.timestamps
    end
  end
end
