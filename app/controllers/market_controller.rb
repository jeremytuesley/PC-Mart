class MarketController < ApplicationController
    def index
        @categories = Category.order(:name)
        @products = Product.order(:created_at).limit(8)
    end
end
