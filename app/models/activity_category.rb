class ActionCategory < ApplicationRecord
  belongs_to :activity
  belongs_to :category
end
