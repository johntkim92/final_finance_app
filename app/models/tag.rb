class Tag < ActiveRecord::Base
  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings

# ?? Need this?
  def to_s
    name
  end

end
