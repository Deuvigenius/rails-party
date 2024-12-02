class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :gonflable

  validates :gonflable_id, :user_id, presence: true
  validates :gonflable_id, uniqueness: { scope: :user_id }
end
