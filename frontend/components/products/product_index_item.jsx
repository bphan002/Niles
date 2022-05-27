import React from 'react'
import { Link } from 'react-router-dom'
import DisplayRating from '../reviews/display_rating'

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

        // const reviewArray= Object.values(this.props.reviews)
        // const totalStars = Object.values(this.props.reviews).reduce((acc,review) => acc + review.rating,0)
        // const avgRating=Math.floor(totalStars/reviewArray.length)
        // const average = Math.floor(total/this.props.reviews.length)
        // console.log('average',average)
        return (
   
            <div className='product-container'>
                <div className='image-container'>
                  <Link to={`/products/${product.id}`}><img className='image' src={product.photoUrl} alt="" /></Link>
                </div>
                <div>
                    <Link to={`/products/${product.id}`}><h1 className='prod-title'>{product.title.length > 102 ? product.title + '...' : product.title}</h1></Link>
                    {/* <DisplayRating displayType='displaystar' rating={avgRating} /> */}
                    <Link to={`/products/${product.id}`}><p className='price'><span className='invisible'>$</span>{product.price.toFixed(2)}</p></Link>
                </div>
            </div>
        )
    }
}

export default ProductIndexItem