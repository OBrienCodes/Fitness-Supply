import React, {useState} from "react";

function Createproductreviewform({product}){
    const [createProductReview, setCreateProductReview] = useState(null)
    const [inputRating, setInputRating] = useState(null)

function NewProductReview(product,createProductReview,inputRating) {
    fetch("/productreviews",{
    method: "POST",
    headers: {
        "Content-Type": "application/json",
    },
    body: JSON.stringify({
            product_id: product.id,
            comment: createProductReview,
            rating: inputRating
    })
})
    .then((resp) => resp.json())
    .then((productreviewsarray) => {
      console.log(productreviewsarray);
})
}
function handleSubmit(e){
    e.preventDefault()
    NewProductReview(product,createProductReview,inputRating)
}
    
    return(
        <form onSubmit={handleSubmit}>
            <div>
                <label>Leave Your Review</label>
                <input type='text' onChange={(e) => setCreateProductReview(e.target.value)}/>
                <br></br>
                <label>Rating</label>
                <input type='text' onChange={(e) => setInputRating(e.target.value)}/>
                <br></br>
                <button type="submit">Submit Review</button>
            </div>
        </form>
    )
}

export default Createproductreviewform;