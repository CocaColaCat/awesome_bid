class Product < ActiveRecord::Base
	validates :name, :product_model, :unit, :price, presence: true
	validates_inclusion_of :unit, in: %w{ 台 }, message: "单位不符合要求"
	validates :price, numericality: { greater_than: 0 }
  validates_uniqueness_of :name, scope: :user_id

	belongs_to :user
end
