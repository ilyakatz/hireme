class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :email, presence: true
end
