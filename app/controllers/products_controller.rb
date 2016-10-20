class ProductsController < ApplicationController
  def index
  	@products = Product.product_category
  	render "products/index"
  end

  def show
  	@curr_product = Product.product_category.where(id: params[:id]).first
    @product_comments = Comment.where(product_id: params[:id])
  	render "products/show"
  end

  def new
  	@category = Category.all
  	render "products/new"
  end

  def create
  	@product = Product.create(name: params[:name], description: params[:descr], pricing: params[:price], category_id: params[:category])
  	redirect_to "/products/"
  end

  def edit
  	@curr_product = Product.product_category.where(id: params[:id]).first
  	@category = Category.all
  	render "products/edit"
  end

  def update
  	Product.where(id: params[:id]).first.update(name: params[:name], description: params[:descr], pricing: params[:price], category_id: params[:category])
  	redirect_to "/products/#{params[:id]}/"
  end

  def destroy
  	Product.where(id: params[:id]).first.destroy
  	redirect_to "/products/"
  end

end
