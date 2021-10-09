# the code below is used to create a post controller
class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	# the code below is used create a method to get the post at a particular index
	def index
		@posts = Post.order('Created_at DESC')
		@rows = [[]]
		@posts.each do |post|
			if @rows[-1].length < 3
				@rows[-1] << post
			else
				@rows << []
				@rows[-1] << post
			end
		end
	File.open("path/to/file", "w") { |file|  }



	# the code below is used to create a method to show post
	def show 
	end

	# the code below is used to create a method to get the new post
	def new
		@post = Post.new
	end


	# the code below is used to create a method to create new post
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to post_path(@post)
		else
			render :new
		end
	end



	# the code below is used to create a method to edit post
	def edit
	end

	# the code below is used to create a method to update post
	def update
		if @post.update_attributes(post_params)
			redirect_to post_path(@post)
		else
			render :edit
		end 
	end



	# the code below is used to create a method to destroy the post
	def destroy
		@post.destroy
		redirect_to post_path
	end

	def post_params
		params.require(:post).permit(:title, :body, :image, :remove_image, :image_cache)
	end


	def set_post
		@post = Post.find(params[:id])
	end


end
