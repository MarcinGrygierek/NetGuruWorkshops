class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :title
  validates_presence_of :description
  validates :price, :presence => true,
            :numericality => true,
            :format => { :with => /\A\d+(?:\.\d{0,2})?\z/  }

  def average_rating
  	self.reviews.average(:rating)
  end
end
