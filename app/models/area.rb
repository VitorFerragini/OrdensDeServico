class Area < ApplicationRecord
  belongs_to :coordenadoria

  default_scope { order 'areas.descricao ASC' }
end
