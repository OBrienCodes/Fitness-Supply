import React from "react";
import { Link } from 'react-router-dom';
import { BrowserRouter as Router,} from 'react-router-dom';


function NavBar() {
   
  return (
    <nav>
      <Link to="/home">Home</Link>
      <Link to="/workoutslist">Workouts </Link>
      <Link to="/yourworkouts">Your Workouts</Link>
      <Link to="/productslist">Products </Link>
      <Link to="/yourproducts">Cart</Link>
      <Link to="/personaltraining">Personal Training</Link>
      <Link to="/onlinecoaching">Online Coaching</Link>
      <Link to="/reviews">Reviews</Link>  
      <Link to="/contact">Contact</Link>
    </nav>
  );
}

export default NavBar;