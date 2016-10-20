class Product < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	def self.product_category
		@category = Product.joins("LEFT JOIN 'categories' ON products.category_id = categories.id").select("products.*, categories.name as category_name")
	end

end
