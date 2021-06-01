class MarketController < ApplicationController
    def index
        @categories = Category.order(:name)
        @products = Product.order(:created_at).limit(8)
    end

    def show
        @category = Category.find(params[:id])
        @products = @category.products
    end
end
