class BreadsController < ApplicationController


def index 
    breads = Bread.all
    render json: breads, except: [:created_at, :updated_at], include: :comments, except: [:created_at, :updated_at]
end




def new 
  bread = Bread.new(bread_params)
  if Bread.save
      render json: bread, except: [:created_at, :updated_at]
  else 
      render json: { errors: bread.errors } 
  end
end 


  def show
    render json: @bread = Bread.find(params[:id])
  end



  def create
    bread = Bread.new(bread_params)

    if bread.save
      render json: bread, status: :created
    else
      render json: bread.errors, status: :unprocessable_entity
    end
  end

  def edit
    @bread = Bread.find(params[:id])
  end

  def update
    bread = Bread.find(params[:id])
      if bread.update(bread_params)
        render json: bread
      else 
        render json: { errors: bread.errors } 
      end
  end

  def destroy
    @bread = Bread.find(params[:id])
    @bread.destroy
  end

  private

  def set_bread
    @bread = Bread.find(params[:id])
  end

  def bread_params
    params.permit(:name, :imgurl, :breadtype)
  end
end

