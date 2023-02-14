class Product < ApplicationRecord
  belongs_to :farm

  validates :picture_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
