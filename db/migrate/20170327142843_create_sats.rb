class CreateSats < ActiveRecord::Migration[5.0]
  def change
    create_table :sats do |t|
      t.string :referencia
      t.text :descripcion
      t.integer :estado
      t.string :timestamp

      t.timestamps
    end
  end
end
