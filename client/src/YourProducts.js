import React, {useState} from "react";
import Productcard from "./Productcard";

function YourProducts({products, handleClick}) {
    return (
        <div>
            <h1> The Best Investment You Can Make Is In Yourself <button onClick>Checkout</button></h1>
            {
            products.map(product => (
              <Productcard key={product.id} product={product} handleClick={handleClick}/>
            ))
            }
        </div>
    )
}

export default YourProducts;