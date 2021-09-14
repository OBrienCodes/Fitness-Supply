import React from "react";

function ProductReviewsCard({ productreview }) {

  function DeleteProductReview(){
    fetch(`/productreviews/${productreview.id}`,{
      method: "Delete"
  })
}
  return (
    <div className="ui column">
      <div
        className="ui card"
        key={productreview.id}
      >
            <div>
            <h2>{productreview.product.name}</h2>
            <img alt="Oops" src={productreview.product.image_url} />
          </div>
        
        <div className="content">
        
          <div className="meta text-wrap">
            <small>Customer Review</small>
            <br></br>
            <small>{productreview.comment}</small>
            <br></br>
            <small>{productreview.rating}</small>
            <br></br>
            <button onClick={DeleteProductReview}>Delete</button>
          </div>
        
        </div>  
     </div>
    </div>
  );
}

export default ProductReviewsCard;