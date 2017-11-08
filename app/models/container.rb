class Container < ApplicationRecord
  validates :size, inclusion: %w{20 40 45}
  validates :code, presence: true

  belongs_to :shipping_line
end
