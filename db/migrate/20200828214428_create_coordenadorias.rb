class CreateCoordenadorias < ActiveRecord::Migration[6.0]
  def change
    create_table :coordenadorias do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
