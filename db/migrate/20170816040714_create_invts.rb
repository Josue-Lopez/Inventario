class CreateInvts < ActiveRecord::Migration[5.0]
  def change
    create_table :invts do |t|
      t.string :producto
      t.integer :existencia
      t.decimal :precio
      t.text :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
