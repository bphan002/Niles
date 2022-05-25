import React from 'react'
import ProductShowReview from './product_show_review'
import { Link } from 'react-router-dom'
import CartPanel from '../cart/cart_panel'
import DisplayRating from '../reviews/display_rating.jsx'

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
        console.log('available props',this.props)

        // const decimal = this.props.product.price.indexOf(".")
        const isLoaded = this.props.product
        if (isLoaded) {       
            console.log('product-show',this.props.product) 
            return (
                
                <>
                    <div className='product-show-container'>
                        <div className='show-image-container'>
                            <img className='show-image' src={this.props.product.photoUrl} alt=""/>
                        </div>
                        <div className='product-info'>
                                <h1 className='show-title'>{this.props.product.title}</h1>
                                <p className='show-price'><span className='invisible'>$</span>{this.props.product.price}</p>

                                <p>About this item</p>
                                <p>
                                    {
                                        this.props.product.bullet.map(
                                            (bullet,idx) => (<li key={idx}>{bullet}</li>))
                                        }
                                </p>
                        </div>
                        <div className='cart-panel'>
                            <CartPanel props={this.props} />
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
                            {Object.values(this.props.reviews??{}).map((review,idx) =>  
                            {
                                 console.log('review',review.rating)
                                 return <div key={idx}> {/* <h1>{review.user.name}</h1> */}
                                    <h3 className='review-headline'><DisplayRating rating={review.rating} header={review.header}/> </h3>
                                    <p>{review.comment}</p>
                                    <button onClick={()=>this.handleRemove(review)} className='review-btn btn'>Delete Review</button>
                                    <Link className='edit-btn' to={`/reviews/${review.id}/edit`}>Edit Button</Link>
                                </div>
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