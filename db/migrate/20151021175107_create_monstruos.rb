class CreateMonstruos < ActiveRecord::Migration
  def change
    create_table :monstruos do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps null: false
    end
  end
end
