class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: %i[new]
  before_action :set_item, only: %i[show update edit destroy]
  before_action :find_categories, only: %i[new create edit update]

  def show
    @already_in_wishlist =  current_user.wishlist_products.include? @product
  end

  def new 
    @product = Product.new
  end

  def create
    @product = Product.new

    @item = Product.new(item_params)
    if @item.save
      redirect_to product_path(@item.id)
    else
      flash.now[:errors] = @item.errors.full_messages
      render action: 'new'
    end
  end

  def edit; end

  def update
    @product.update(item_params)
    redirect_to product_path(@product.id)
  end

  def destroy
    if @product
      @product.destroy
      redirect_to usercenter_path
    end
  end

  def item_params
    params.require(:product).permit(:name, :price, :category_id, :user_id, :description, :picture)
  end

  def set_item
    @product = Product.find(params[:id])
  end

  def find_categories
    @categories = Category.order(:name)
  end
end
