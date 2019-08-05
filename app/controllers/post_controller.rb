class PostController < ApplicationController
    def index
        @post= Post.all
    end
    
    def create
    end

    def postdb
        unless params[:title].blank? && params[:content].blank?
            post = Post.new
            post.title = params[:title]
            post.content = params[:content]
            post.save
        end
        redirect_to '/post/index'
    end

    def show
        @post = Post.find(params[:post_id]) 
    end

    def update
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.content = params[:content]
        post.save

        redirect_to '/post/show/' + params[:post_id]
    end

    def modify     
        @post = Post.find(params[:post_id]) 
    end

    def delete
        Post.destroy(params[:post_id])
        redirect_to '/post/index'
    end

    def search
    end

    def result
        @searches = eval(params[:title]).where("title like ?", "%#{params[:search_text]}%")
    end 
      
end
