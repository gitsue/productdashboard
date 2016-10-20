class Comment < ActiveRecord::Base
  belongs_to :product

  def self.product_comment
  	Comment.joins(:product).select("products.*, comments.*, products.name")
  end

end
