class Tac < ApplicationRecord
    default_scope { order 'tacs.created_at DESC' }
end
