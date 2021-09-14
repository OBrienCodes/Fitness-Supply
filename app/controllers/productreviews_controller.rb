class ProductreviewsController < ApplicationController

    def index 
        productreviews = Productreview.all
        render json:productreviews, include: :product
    end 

    def create
        productreview = Productreview.create(productreview_params)
        render json:productreview 
    end 

    def destroy
        review = Productreview.find(params[:id])
        review.destroy
        render json: {message:'Product review deleted'}
    end 

    private

    def productreview_params
        params.require(:productreview).permit(:comment, :rating, :product_id)
    end 
end
