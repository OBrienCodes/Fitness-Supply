import React, {useState} from "react";

function Createreviewform({workout}){
    const [createReview, setCreateReview] = useState(null)
    const [inputRating, setInputRating] = useState(null)

function NewReview(workout,createReview,inputRating) {
    fetch("/reviews",{
    method: "POST",
    headers: {
        "Content-Type": "application/json",
    },
    body: JSON.stringify({
            user_id: 1,
            workout_id: workout.id,
            comment: createReview,
            rating: inputRating
    })
})
    .then((resp) => resp.json())
    .then((reviewsarray) => {
      console.log(reviewsarray);
})
}
function handleSubmit(e){
    e.preventDefault()
    NewReview(workout,createReview,inputRating)
}
    
    return(
        <form onSubmit={handleSubmit}>
            <div>
                <label>Leave Your Review</label>
                <input type='text' onChange={(e) => setCreateReview(e.target.value)}/>
                <br></br>
                <label>Rating</label>
                <input type='text' onChange={(e) => setInputRating(e.target.value)}/>
                <br></br>
                <button type="submit">Submit Review</button>
            </div>
        </form>
    )
}

export default Createreviewform;