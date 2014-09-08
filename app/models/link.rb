class Link < ActiveRecord::Base
  validates :description, :presence => true
  validates :user_id, :numericality => true

  belongs_to :user
  has_many :votes
end
