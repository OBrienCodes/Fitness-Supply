class ProductreviewsController < ApplicationController

    def index 
        productreviews = Productreview.all
        render json:productreviews
    end 

    def create
        productreview = Productreview.create(productreview_params)
        render json:productreview 
    end 

    private

    def productreview_params
        params.require(:productreview).permit(:comment, :rating, :product_id)
    end 
end
