import ProductReviewsCard from "./ProductReviewsCard";

function ProductReviews({ productreviews }) {
    return (
        <div>
            <h1>Product Reviews</h1>
            {
            productreviews.map(productreview => (
              <ProductReviewsCard key={productreviews.id} productreview={productreview}/>
            ))
            }
        </div>
    )
}

export default ProductReviews;