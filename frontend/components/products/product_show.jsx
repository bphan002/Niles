import React from 'react'
import { Link } from 'react-router-dom'
import ProductShowReview from './product_show_review'
import { deleteReview } from '../../utils/review_utils'

class ProductShow extends React.Component {
    constructor(props) {
        super(props)
        this.handleRemove = this.handleRemove.bind(this)
    }
    componentDidMount() {
       console.log('component show product didmount')
        this.props.requestProduct(this.props.match.params.productId)
    }

    handleRemove(review) {
        this.props.deleteReview(review.id)
    }
    
    render() {
        const isLoaded = this.props.product
        if (isLoaded) {        
            return (
                <>
                    <div className='product-show-container'>
                        <img className='show-image' src={window.sample_image} alt=""/>
                        <div className='product-info'>
                                <h1 className='show-title'>{this.props.product.title}</h1>
                                <p>About this item</p>
                                <p>
                                    {
                                        this.props.product.bullet.map(
                                            (bullet,idx) => (<li key={idx}>{bullet}</li>))
                                        }
                                </p>
                        </div>
                    </div>
                    <div className='description-container'>
                        <h3>Product Description</h3>
                        <p>{this.props.product.description}</p>
                    </div>
                    <div className='review-section'>
                        <div className='review-show-container'>
                            {/* think of what props to pass into this product show component */}
                            {/* current user to know who left the review */}
                            {/* product id */}
                            {/* review crud functionality? */}
                            <ProductShowReview products={this.props.product}/> 
                        </div>
                        <div className='user-review'>
                            <h2>Top reviews from the United States</h2>
                            {Object.values(this.props.product.reviews??{}).map((review) =>  
                            
                             {
                                 return <> {/* <h1>{review.user.name}</h1> */}
                                    <h3><span>{review.rating}</span> {review.header}</h3>
                                    <p>{review.comment}</p>
                                    {/* <Link class='review-btn btn'>Edit Review</Link> */}
                                    <button onClick={()=>this.handleRemove(review)} class='review-btn btn'>Delete Review</button>
                                </>
        })}
                        </div>
                    </div>
                </>
            )
        } else {
            return (
                <div>
                    <p>Loading...</p>
                </div>
                )
            }
        }
    }
    
    export default ProductShow