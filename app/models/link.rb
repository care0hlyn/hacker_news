class Link < ActiveRecord::Base
  validates :description, :presence => true
  validates :user_id, :numericality => true
end
