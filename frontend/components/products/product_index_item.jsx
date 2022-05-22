import React from 'react'
import { Link } from 'react-router-dom'

class ProductIndexItem extends React.Component {
    constructor(props) {
        super(props)
    }
    
    render() {
        const {product} = this.props
        // let money = this.props.product.price
        // let result = money.indexOf(".")
        return (
   
            <div className='product-container'>
                <div className='image-container'>
                  <Link to={`/products/${product.id}`}><img className='image' src={window.sample_image} alt="" /></Link>
                </div>
                <Link to={`/products/${product.id}`}><h1 className='prod-title'>{product.title}</h1></Link>
                <p className='price'><span className='invisible'>$</span>{product.price}</p>
            </div>
        )
    }
}

export default ProductIndexItem