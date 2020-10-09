class AddSsToOrdensDeServico < ActiveRecord::Migration[6.0]
  def change
    add_column :ordens_de_servico, :ss, :string
  end
end
