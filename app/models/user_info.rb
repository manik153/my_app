class UserInfo < ApplicationRecord
  belongs_to :user
  belongs_to :country

  serialize :languages_known, Array

  validates :gender, presence: true, exclusion: { in: %w(Male Female) }
  validates :user_name, presence: true, uniqueness: true
end