class Product < ApplicationRecord
  belongs_to :farm
  has_many :purchases, dependent: :destroy
  has_many :users, through: :purchases

  validates :name, :category, :picture_link, :description, :price, :stock, presence: true
  validates :category, inclusion: {in: %w(vegetable fruit), message: "%{value} is not within the accepted category."}
  validates :stock, :price, numericality: {greater_than: 0}

  # validates :picture_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])  # does this even works?
  
end
