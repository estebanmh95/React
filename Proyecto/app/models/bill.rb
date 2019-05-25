class Bill < ApplicationRecord
  belongs_to :edificio
  has_one :payment
end
