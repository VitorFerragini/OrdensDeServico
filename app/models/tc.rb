class Tc < ApplicationRecord
    default_scope { order 'tcs.created_at DESC' }
end
