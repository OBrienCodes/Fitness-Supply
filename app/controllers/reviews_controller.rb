class ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json:reviews
    end 

    def create
        review = Review.create(review_params)
        render json:review 
    end 

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: {message:'Review deleted'}
    end 

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        if review.valid?
         render json:review
        else
            render json:{error: review.errors.full_messages} 
        end 
    end 

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :workout_id)
    end 
end
