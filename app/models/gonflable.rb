class Gonflable < ApplicationRecord
  belongs_to :user
  has_many :users, through: :rents
  has_many :rents, dependent: :destroy
  has_one_attached :photo
  paginates_per 20

  validates :name, :price, :content, presence: true
end
