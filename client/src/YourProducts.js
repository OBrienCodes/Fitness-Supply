import React, {useState} from "react";
import Productcard from "./Productcard";

function YourProducts({products, handleClick}) {
    return (
        <div>
            <h1> Your Products</h1>
            {
            products.map(product => (
              <Productcard key={product.id} product={product} handleClick={handleClick}/>
            ))
            }
        </div>
    )
}

export default YourProducts;