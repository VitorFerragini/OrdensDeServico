class CreateFases < ActiveRecord::Migration[6.0]
  def change
    create_table :fases do |t|
      t.string :nome

      t.timestamps
    end
  end
end
