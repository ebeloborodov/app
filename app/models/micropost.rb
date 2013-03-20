class Micropost < ActiveRecord::Base
  belongs_to :user

  validates :content, :length => { :maximum => 140, :minimum => 3 }
  validates :user_id, :presence => true, :numericality => true
end