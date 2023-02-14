class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :picture_link, :description, :price, :stock
end
