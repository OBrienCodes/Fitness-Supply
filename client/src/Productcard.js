import React from "react";

function Productcard({ product, handleClick}) {
  return (
    <div className="ui column">
      <div
        className="ui card"
        key={product.id}
        onClick={() => handleClick(product)}
      >
            <div className="header">
            <h2>{product.name}</h2>
          </div>
        <div className="image" >
          <img alt="image" src={product.image_url} />
        </div>
        
        <div className="content">
        
          <div className="meta text-wrap">
            <small>{product.description}</small>
            <br></br>
            <small>${product.price}</small>
            
          </div>
        
        </div>  
     </div>
    </div>
  );
}

export default Productcard;