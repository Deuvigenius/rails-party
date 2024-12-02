class Gonflable < ApplicationRecord
  belongs_to :user
  has_many :users, through: :rents
  has_many :rents

  validates :name, :price, :content, presence: true
end
