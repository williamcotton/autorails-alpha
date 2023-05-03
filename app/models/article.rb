class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :description, presence: true
  validates :isPublished, inclusion: { in: [true, false] }

  scope :published, -> { where(isPublished: true) }
end
