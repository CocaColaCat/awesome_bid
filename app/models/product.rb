class Product < ActiveRecord::Base
	validates :name, :product_model, :unit, :price, presence: true
	validates :unit, inclusion: { in: %w{ 台 } }
	validates :price, numericality: { greater_than: 0 }
  validates_uniqueness_of :name, scope: :user_id

	belongs_to :user
end
