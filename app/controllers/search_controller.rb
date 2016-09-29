class SearchController < ApplicationController
  def create
  	palabra = "%#{params[:keyword]}%"

  	@posts = Post.where("title LIKE ? OR description LIKE ?", palabra,palabra)
      
    if @posts = Post.find(params[:keyword])
      render post_path
    else
      render "new"
    end


  	respond_to do |format|
  		format.html { redirect_to root_path }
  		format.json{ render json: @posts }
  		format.js

  	end
  end
end
