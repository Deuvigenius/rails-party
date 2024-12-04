class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :gonflable

  validates :statut, inclusion: { in: ["En attente", "Accepté", "Rejeté"] }
end
