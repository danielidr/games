class Component < ApplicationRecord
  belongs_to :game
  has_many_attached :pieces
end
