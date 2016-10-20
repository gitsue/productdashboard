class CommentsController < ApplicationController
	def allcomments
    	@comments = Comment.product_comment
    	render "products/comments"
	end

	def addcomment
		@comment = Comment.create(comment: params[:comment], product_id: params[:id])
		redirect_to "/products/"
	end

end
