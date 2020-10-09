class CreateOrdensDeServico < ActiveRecord::Migration[6.0]
  def change
    create_table :ordens_de_servico do |t|
      t.string :numero
      t.references :pa, null: false, foreign_key: true
      t.references :tc, null: false, foreign_key: true
      t.references :tac, null: false, foreign_key: true
      t.date :data_emissao
      t.references :coordenadoria, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true
      t.string :responsavel
      t.boolean :emergencial
      t.references :tipo, null: false, foreign_key: true
      t.references :sistema, null: false, foreign_key: true
      t.date :data_necessidade
      t.date :data_entrega
      t.decimal :esforco_estimado
      t.references :fase, null: false, foreign_key: true
      t.date :fatura
      t.decimal :esforco_realizado
      t.date :data_aceite
      t.string :obs
      t.text :solicitacao

      t.timestamps
    end
  end
end
