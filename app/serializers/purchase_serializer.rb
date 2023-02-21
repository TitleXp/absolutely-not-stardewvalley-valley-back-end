class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id #, :purchase_created_at
  # has_one :user
  has_one :product

  # def purchase_created_at
  #   self.Product([:created_at])
  # end
  
end
