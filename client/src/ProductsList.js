import Productcard from "./Productcard"

function ProductsList({products, handleClick}) {
  return (
    <div className="products-container">
       <h1>Choose Your Products</h1>
        {
          products.map(product => (
            <Productcard key={product.id} product={product} handleClick={handleClick}/>
          ))
        }     
    </div>
  );
}

export default ProductsList;