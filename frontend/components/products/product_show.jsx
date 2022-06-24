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
        this.props.requestProduct(this.props.match.params.productId)
    }
    
    handleRemove(review) {
        this.props.deleteReview(review.id)
    }
    
    
    render() {
        const d = new Date()

        const monthArr= [
            'January',
            'February',
            'March',
            'April',
            'May',
            'June',
            'July',
            'August',
            'September',
            'October',
            'November',
            'December'
        ]

        const weekDay= [
            'Sunday',
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday',
            'Friday',
            'Saturday',
        ]
        const day = weekDay[d.getDay()]
        const dayNum = d.getDate()
        const month = monthArr[d.getMonth()]
        const year = d.getFullYear()
        const isLoaded = this.props.product
        if (isLoaded) {       
            const reviewArray= Object.values(this.props.reviews)
            const totalStars = Object.values(this.props.reviews).reduce((acc,review) => acc + review.rating,0)
            const avgRating=Math.floor(totalStars/reviewArray.length)
            return (
                <>
                   
                    <div className='product-show-container'>
                        <div className='show-image-container'>
                            <img className='show-image' src={this.props.product.photoUrl} alt=""/>
                        </div>
                        <div className='product-info'>
                                <h1 className='show-title'>{this.props.product.title}</h1>
                                <span><DisplayRating displayType='big-display-star' rating={avgRating}/></span>
                                <p className='show-price'><span className='invisible'>$</span>{this.props.product.price.toFixed(2)}</p>

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
                                 return <div className='avatar-container' key={idx}>
                                     <div className='avatar-user'>
                                        <img className='review-logo' src={window.avatar_image} alt=""/>
                                        <p>{review.username.name}</p>
                                     </div>
                                    <h3 className='review-headline'><DisplayRating displayType='displaystar' rating={review.rating} header={review.header}/> </h3>
                                    <p className='date'>Reviewed in the United States on {month} {dayNum}, {year}</p>
                                    <p>{review.comment}</p>
                                    <div>
                                        
                                        {review.user_id 
                                        ? '' : review.user_id === this.props.currentUser.id ?
                                    <div>
                                    <button onClick={()=>this.handleRemove(review)} className='review-btn btn'>Delete Review</button>
                                    <Link className='edit-btn' to={`/reviews/${review.id}/edit`}>Edit Button</Link>
                                    </div>
                                     : null
                                    }
                                    </div>
                                    
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