class Game < ApplicationRecord
    has_one :rule
    has_many :components
    has_one_attached :box_picture
end
