class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_many :activities, foreign_key: 'author_id'
  has_many :categories, foreign_key: 'author_id'

  validates :name, presence: true
end
