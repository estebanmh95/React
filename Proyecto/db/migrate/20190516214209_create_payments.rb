class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :bill, foreign_key: true
      t.string :tipo
      t.string :fecha

      t.timestamps
    end
  end
end
