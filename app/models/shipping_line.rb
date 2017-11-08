class ShippingLine < ApplicationRecord
  validates :code, length: {maximum: 4}
  audited
end
