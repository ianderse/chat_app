class Message < ActiveRecord::Base
  validates :body, presence: true
  validates :subject, presence: true
  belongs_to :user
end
