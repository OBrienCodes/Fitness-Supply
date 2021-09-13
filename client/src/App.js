import React, {useEffect, useState} from 'react';
import Home from './Home';
import WorkoutsList from './WorkoutsList';
import YourWorkouts from './YourWorkouts';
import ProductsList from './ProductsList';
import YourProducts from './YourProducts';
import Personaltraining from './Personaltraining';
import Onlinecoaching from './Onlinecoaching';
import Reviews from './Reviews';
import Contact from './Contact';
import Header from './Header';
import NavBar from './NavBar';
import Productreviews from './Productreviews';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import Createreviewform from './Createreviewform';

function App() {
  const [workouts, setWorkouts] = useState([])
  const [myWorkouts, setMyWorkouts] = useState([])
  const [products, setProducts] = useState([])
  const [myProducts, setMyProducts] = useState([])
  const [reviews, setReviews] = useState([])
  const [productreviews, setProductReviews] = useState([])
  const selectWorkout = (workout) => {
    if(myWorkouts.includes(workout)){
      
    }else{
    const myWorkoutsList = [...myWorkouts, workout]
    setMyWorkouts(myWorkoutsList)
  }}

  const removeWorkout = (workout) => {
    const myWorkoutsList = [...myWorkouts].filter((myWorkout) => myWorkout.id !== workout.id)
    setMyWorkouts(myWorkoutsList)
  }
  const selectProduct = (product) => {
    if(myProducts.includes(product)){
      alert('Already Put In Cart!')
    }else{
    const myProductsList = [...myProducts, product]
    setMyProducts(myProductsList)
  }}

  const removeProduct = (product) => {
    const myProductsList = [...myProducts].filter((myProduct) => myProduct.id !== product.id)
    setMyProducts(myProductsList)
  }

  useEffect(() => {
    fetch("/workouts")
      .then((resp) => resp.json())
      .then((workoutsarray) => {
        setWorkouts(workoutsarray);
      });
      fetch("/products")
      .then((resp) => resp.json())
      .then((productsarray) => {
        setProducts(productsarray);
      });
      fetch("/productreviews")
      .then((resp) => resp.json())
      .then((productreviewsarray) => {
        setProductReviews(productreviewsarray);
      });
      fetch("/reviews")
      .then((resp) => resp.json())
      .then((reviewsarray) => {
        setReviews(reviewsarray);})
}, []);


return(
  
  <div>
    <Router>
    <NavBar />
    <Header />
      <Switch>
        <Route exact path ="/home" component={
          () => <Home/>}/>
        <Route exact path="/workoutslist" component={
          () => <WorkoutsList workouts={workouts} handleClick={selectWorkout} />}/>
        <Route exact path="/yourworkouts" component={
          () => <YourWorkouts workouts={myWorkouts} handleClick={removeWorkout}/>}/>
          <Route exact path="/productslist" component={
                () => <ProductsList products={products} handleClick={selectProduct} />}/>
          <Route exact path="/yourproducts" component={
                () => <YourProducts products={myProducts} setMyProducts={setMyProducts} handleClick={removeProduct}/>}/>
          <Route exact path ="/personaltraining" component={
          () => <Personaltraining/>}/>      
          <Route exact path ="/onlinecoaching" component={
          () => <Onlinecoaching/>}/>
          <Route exact path="/reviews" component={
            () => <Reviews reviews={reviews} />}/>
          <Route exact path="/productreviews" component={
            () => <Productreviews productreviews={productreviews} />}/>
          <Route exact path ="/contact" component={
          () => <Contact/>}/>  
      </Switch>
    </Router>
  </div>
)
}
export default App;
