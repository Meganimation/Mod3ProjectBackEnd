class CommentsController < ApplicationController


    def index 
        comments = Comment.all
        render json: @comments
    end


      def show
        set_comment
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
        comment = Comment.find(params[:id])
          if comment.update(comment_params)
            render json: comment
          else 
            render json: { errors: comment.errors } 
          end
      end 
    
    
    
    
      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
      end
    
      private
    
      def set_comment
        @comment = Comment.find(params[:id])
      end
    
      def comment_params
        params.permit(:content, :bread_id)
      end
    end
