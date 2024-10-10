class Charge < ApplicationRecord
  belongs_to :chargeable, polymorphic: true
end
