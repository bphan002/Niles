import React from 'react'
import { Link } from 'react-router-dom'



class ProductShowReview extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            rating: null,
            hover: null
        }
    }

    render() {
        console.log('these are props')
        console.log(this.props)
        return(
            <div className='customer-review-container'>
                <h3 className='review'>Customer reviews</h3>
                <h4>Review this product</h4>
                <p>Share your thoughts with other customers</p>
                <Link className='reviewbtn' to={`/products/${this.props.products.id}/reviews/new`}>Write a customer review</Link>
            </div>
        )
    }
}

export default ProductShowReview