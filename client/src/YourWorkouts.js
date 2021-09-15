import React, {useState} from "react";
import WorkoutCard from "./Workoutcard";

function YourWorkouts({workouts, handleClick}) {
    return (
        <div className="yourworkouts-container">
            <h1>There are no shortcuts to results, put in the work!</h1>
            {
            workouts.map(workout => (
              <WorkoutCard key={workout.id} workout={workout} handleClick={handleClick}/>
            ))
            }
        </div>
    )
}

export default YourWorkouts;