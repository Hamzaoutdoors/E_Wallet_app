class Action < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :action_categories, foreign_key: :action_id

  validates :name, :amount, presence: true
end
