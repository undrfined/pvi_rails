class Article < ApplicationRecord
  include Visible
  belongs_to :user

  has_one_attached :image

  has_many :comments, dependent: :destroy

  validates :image, presence: true
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
