class Game < ApplicationRecord
    has_one_attached :box_picture, dependent: :destroy
    has_one_attached :pdf_rules, dependent: :destroy
    has_many_attached :images, dependent: :destroy

    validates_presence_of :name, :rules
    validates :box_picture, :images, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..5.megabytes }
    validates :pdf_rules, presence: true, blob: { content_type: ['application/pdf'], size_range: 1..10.megabytes }
end
