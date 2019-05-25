class CreateEdificios < ActiveRecord::Migration[5.2]
  def change
    create_table :edificios do |t|
      t.string :name

      t.timestamps
    end
  end
end
