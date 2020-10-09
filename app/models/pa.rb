class Pa < ApplicationRecord
    default_scope { order 'pas.created_at DESC' }
end
