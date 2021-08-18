class Component < ApplicationRecord
  belongs_to :game
  has_many_attached :pieces, dependent: :destroy
end
