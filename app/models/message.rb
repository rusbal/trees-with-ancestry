class Message < ActiveRecord::Base

  validates :message, presence: true

  has_ancestry
end
