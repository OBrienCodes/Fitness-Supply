import ReviewsCard from "./ReviewsCard";

function Reviews({reviews }) {
    return (
        <div className="reviews-container">
            <h1>Your Reviews</h1>
            {
            reviews.map(review => (
              <ReviewsCard key={reviews.id} review={review}/>
            ))
            }
        </div>
    )
}

export default Reviews;