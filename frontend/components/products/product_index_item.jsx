import React from 'react'
import { Link } from 'react-router-dom'

class ProductIndexItem extends React.Component {
    constructor(props) {
        super(props)
        this.titleChopper = this.titleChopper.bind(this)
    }
    

    titleChopper(title) {
        if (title.length > 25) {
            title = title.substring(0,24) + "..."
            console.log('title',title)
            return title
        } else {
            console.log('title',title)
            return title
        }
    }
    
    render() {
        const {product} = this.props
        // let money = this.props.product.price
        // let result = money.indexOf(".")
        return (
   
            <div className='product-container'>
                <div className='image-container'>
                  <Link to={`/products/${product.id}`}><img className='image' src={product.photoUrl} alt="" /></Link>
                </div>
                <Link to={`/products/${product.id}`}><h1 className='prod-title'>{product.title.length > 102 ? product.title + '...' : product.title}</h1></Link>
                <p className='price'><span className='invisible'>$</span>{product.price.toFixed(2)}</p>
            </div>
        )
    }
}

export default ProductIndexItem