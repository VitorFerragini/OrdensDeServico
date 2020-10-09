class AddTituloToOrdensDeServico < ActiveRecord::Migration[6.0]
  def change
    add_column :ordens_de_servico, :titulo, :string
  end
end
