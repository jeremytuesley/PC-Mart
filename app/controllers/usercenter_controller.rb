class UsercenterController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user

    def index
        @products = @user.products
        @owner = true
    end

    def wishlist
        @products = @user.wishlist_products
        @owner = false
    end

    def delete_wishlist
        @item = Product.find(params[:item])
        @user.wishlist_products.delete(@item)
        redirect_to wishlist_path
    end

    def create_wishlist
        @item = Product.find(params[:item])
        @user.wishlist_products << @item
        redirect_to wishlist_path
    end

    def set_user
        @user = User.find(current_user.id)
    end
end
