class Activity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :activity_categories, foreign_key: :activity_id

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
