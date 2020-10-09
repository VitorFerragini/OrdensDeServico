class ChangeNullConstraints < ActiveRecord::Migration[6.0]
  def change
    change_column_null :ordens_de_servico, :area_id, true
    change_column_null :ordens_de_servico, :coordenadoria_id, true
    change_column_null :ordens_de_servico, :tipo_id, true
    change_column_null :ordens_de_servico, :sistema_id, true
  end
end
