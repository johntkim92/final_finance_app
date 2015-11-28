class Article < ActiveRecord::Base

  validates :title, presence: true
  validates :body, presence: true
  validates :cash, presence: true
  validates :start_date, presence: true

  has_many :comments, dependent: :destroy

end
