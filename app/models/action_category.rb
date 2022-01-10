class ActionCategory < ApplicationRecord
  belongs_to :action
  belongs_to :category
end
