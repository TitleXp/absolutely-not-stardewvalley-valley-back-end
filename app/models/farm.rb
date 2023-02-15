class Farm < ApplicationRecord
    has_many :products, dependent: :destroy

    validates :name, :location, presence: true

    # validates :name, uniqueness: true
    # validates :name, uniqueness: {scope :name, message: "%{value} is already taken!"}
end

