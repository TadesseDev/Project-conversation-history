class Project < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :update_histories
end
