class CommentsController < ApplicationController
  def create
  	visitor = Visitor.find_by(email: visitor_comments_params[:email])

  	if visitor
  		visitor.tap do |v|
  			v.comments << Comment.new(visitor_comments_params[:comments_attributes]['0'])
  		end
  	else
  		visitor = Visitor.new(visitor_comments_params)
  	end

  	if visitor.save
  		flash[:notice] = "Successfully created new comment"
  	else
  		flash[:alert] = "There was a problem creating your comment"
  	end

  	redirect_to :back
  end

  private

  def visitor_comments_params
  	params.require(:visitor).permit(:fullname, :email, :comments_attributes => [:message, :post_id])
  end
end
