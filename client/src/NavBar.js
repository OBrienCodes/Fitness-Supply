import React from "react";
import { Link } from 'react-router-dom';
import { BrowserRouter as Router,} from 'react-router-dom';


function NavBar() {
   
  return (
    <nav>
    
      <Link to="/workoutslist">Workouts </Link>
      <Link to="/yourworkouts">Your Workouts</Link>
      <Link to="/productslist">Products </Link>
      <Link to="/yourproducts">Cart</Link>
      <Link to="/reviews">Reviews</Link>  
    </nav>
  );
}

export default NavBar;