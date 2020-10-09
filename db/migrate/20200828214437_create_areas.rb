class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.references :coordenadoria, null: false, foreign_key: true
      t.string :descricao

      t.timestamps
    end
  end
end
