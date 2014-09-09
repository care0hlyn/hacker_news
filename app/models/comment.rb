class Comment < ActiveRecord::Base
  validates :input, :presence => true
  validates :link_id, :numericality => true

  belongs_to :user
  belongs_to :link

end
