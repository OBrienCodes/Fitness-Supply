import React from "react";

function ReviewsCard({ review }) {
  return (
    <div className="ui column">
      <div
        className="ui card"
        key={review.id}
      >
            <div>
            <h2>{review.user_id.name}</h2>
            <img alt="Oops" src={review.user_id.image_url} />
          </div>
        
        <div className="content">
        
          <div className="meta text-wrap">
            <small>{review.comment}</small>
            <br></br>
            <small>{review.rating}</small>
            <br></br>
            <button onClick>Edit</button> 
            <br></br>
            <button onClick>Delete</button>
          </div>
        
        </div>  
     </div>
    </div>
  );
}

export default ReviewsCard;