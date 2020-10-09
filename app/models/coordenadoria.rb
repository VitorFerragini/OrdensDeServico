class Coordenadoria < ApplicationRecord
    default_scope { order 'coordenadorias.descricao ASC' }
end
