import React, {useState} from "react";
import Productcard from "./Productcard";

function YourProducts({products, handleClick, setMyProducts}) {
function emptyCart(){
    setMyProducts([])
    alert('Congratulations On Investing In Your Health! Purchase Complete!')
}
    return (
        <div className="cart-container">
            <h1> The Best Investment You Can Make Is In Yourself <button onClick={emptyCart}>Checkout</button></h1>
            {
            products.map(product => (
              <Productcard key={product.id} product={product} handleClick={handleClick}/>
            ))
            }
        </div>
    )
}

export default YourProducts;