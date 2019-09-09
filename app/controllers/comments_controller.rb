class CommentsController < ApplicationController


    def index 
        comments = Comment.all
        render json: comments
    
      def show
        render json: @comment
      end
    
      def create
        comment = Comment.new(comment_params)
    
        if comment.save
          render json: comment, status: :created
        else
          render json: comment.errors, status: :unprocessable_entity
        end
      end
    
      def edit
        @comment = Comment.find_by id: params[:id]
      end
    
      def update
        if @comment.update(comment_params)
          render json: @comment
        else
          render json: @comment.errors, status: :unprocessable_entity
        end
      end
    
    
    
    
      def destroy
        @comment.destroy
      end
    
      private
    
      def set_comment
        @comment = Comment.find(params[:id])
      end
    
      def comment_params
        params.require(:comment).permit(:content, :bread_id)
      end
    end
