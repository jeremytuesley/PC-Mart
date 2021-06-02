class MarketController < ApplicationController
    def index
        @categories = Category.order(:name)
        @products = Product.order(created_at: :desc).limit(8)
    end

    def show
        @category = Category.find(params[:id])
        @products = @category.products
    end

    def seller
        @seller = User.find(params[:id])
        @products = @seller.products
    end
end
