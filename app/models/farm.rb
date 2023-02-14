class Farm < ApplicationRecord
    has_many :products, dependent: :destroy
end
