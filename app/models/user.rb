class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rents, dependent: :destroy
  has_many :gonflables, dependent: :destroy
  has_many :reviews
  has_one_attached :photo

end
