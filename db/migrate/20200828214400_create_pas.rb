class CreatePas < ActiveRecord::Migration[6.0]
  def change
    create_table :pas do |t|
      t.string :numero

      t.timestamps
    end
  end
end
