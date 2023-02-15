class User < ApplicationRecord
    has_secure_password # password, password_confirmation, password_recovery, authenticate

    has_many :purchases, dependent: :destroy
    has_many :products, through: :purchases

    validates :role, inclusion: {in: %w(farmer buyer)}

end
