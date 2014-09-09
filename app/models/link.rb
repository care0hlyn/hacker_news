class Link < ActiveRecord::Base
  validates :description, :presence => true
  validates :user_id, :numericality => true

  belongs_to :user
  has_many :votes

  def upvote_total
    self.votes.count
  end
end
