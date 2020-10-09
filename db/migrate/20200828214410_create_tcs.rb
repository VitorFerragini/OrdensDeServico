class CreateTcs < ActiveRecord::Migration[6.0]
  def change
    create_table :tcs do |t|
      t.string :numero

      t.timestamps
    end
  end
end
