import React, {useState} from "react";
import Createreviewform from "./Createreviewform";

function WorkoutCard({ workout, handleClick,}) {
  return (
    <div className="ui column">
      <div
        className="ui card"
        key={workout.id}
        onClick={() => handleClick(workout)}
      >
            <div className="header">
            <h2>{workout.name}</h2>
          </div>
        <div className="image" >
          <img alt="image" src={workout.image_url} />
        </div>
        
        <div className="content">
        
          <div className="meta text-wrap">
          <small>Exercise Number: {workout.id}</small>
          <br></br>
            <small>{workout.description}</small>
            <br></br>
            <Createreviewform workout={workout}/>
          </div>
        </div>  
     </div>
    </div>
  );
}

export default WorkoutCard;