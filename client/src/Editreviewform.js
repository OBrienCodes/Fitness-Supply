function EditReviewForm(){

    function onSubmit(e) {
        e.preventDefault();
        fetch("http://localhost:3000/reviews",{
        method: "UPDATE",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            review: {
                workout_id: 1,
                comment: "Test Comment",
                rating: 7
            },
        })
        
        .then((resp) => resp.json())
        .then((reviewsarray) => {
          editReview(reviewsarray);
        })
    })
    }
    
        
        return(
            <form>
                <div>
                    <label>Leave Your Review</label>
                    <input type='text'/>
                    <br></br>
                    <label>Rating</label>
                    <input type='text'/>
                    <br></br>
                    <button onClick>Submit Review</button>
                </div>
            </form>
        )
    }
    
    export default EditReviewForm;