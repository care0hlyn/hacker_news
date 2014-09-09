class Link < ActiveRecord::Base
  validates :description, :presence => true
  validates :user_id, :numericality => true

  belongs_to :user
  has_many :votes
  has_many :comments

  def self.sort_by_score
    self.all.sort { |a,b| a.link_score <=> b.link_score }.reverse
  end

  def link_score
    created = self.created_at.strftime('%a, %d %b %Y').to_date
    age = (Date.today - created).to_i
    score = (self.votes.count) * 10 - age
  end

  def upvote_total
    self.votes.count
  end
end
