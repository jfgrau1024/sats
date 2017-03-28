class EliminarColumnaTimestamp < ActiveRecord::Migration[5.0]
  def change
    remove_column :sats, :timestamp, :string
  end
end
