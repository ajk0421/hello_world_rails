class Article < ApplicationRecord
  belongs_to :user

  scope :published, -> { where(public_status: true }
end
