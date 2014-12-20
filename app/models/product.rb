class Product < ActiveRecord::Base
	validates :name, :product_model, :unit, :price, presence: true
	validates :unit, inclusion: { in: %w{ 台 } }
	validates :price, numericality: { greater_than: 0 }

	belongs_to :user
end
