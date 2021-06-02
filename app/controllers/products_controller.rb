class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: %i[new]
  before_action :set_item, only: %i[show update edit destroy]

  def show
  end

  def new 
    @new_product = Product.new
    @categories = Category.order(:name)
  end

  def create
    @new_product = Product.new
    @categories = Category.order(:name)

    @item = Product.new(item_params)
    if @item.save
      redirect_to product_path(@item.id)
    else
      flash.now[:errors] = @item.errors.full_messages
      render action: 'new'
    end
  end

  def edit
  end

  def destroy
    if @product
      @product.destroy
      redirect_to usercenter_index_path
    end
  end

  def item_params
    params.require(:product).permit(:name, :price, :category_id, :user_id, :description, :picture)
  end

  def set_item
    @product = Product.find(params[:id])
  end
end
