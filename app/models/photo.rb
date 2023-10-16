class Photo < ApplicationRecord
  has_rich_text :content
  validates :title, length: { minimum: 5 }
  validates :title, length: { maximum: 40 }
end
