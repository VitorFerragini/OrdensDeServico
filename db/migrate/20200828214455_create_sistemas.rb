class CreateSistemas < ActiveRecord::Migration[6.0]
  def change
    create_table :sistemas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
