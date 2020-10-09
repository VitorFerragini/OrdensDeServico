json.extract! ordem_de_servico, :id, :numero, :pa_id, :tc_id, :tac_id, :data_emissao, :coordenadoria_id, :area_id, :responsavel, :emergencial, :tipo_id, :sistema_id, :data_necessidade, :data_entrega, :esforco_estimado, :fase_id, :fatura, :esforco_realizado, :data_aceite, :obs, :solicitacao, :created_at, :updated_at
json.url ordem_de_servico_url(ordem_de_servico, format: :json)
