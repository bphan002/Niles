import React from 'react'
import { IoIosStar } from 'react-icons/io'
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
        return(
            <div className='customer-review-container'>
                <h3 className='review'>Customer reviews</h3>
                <div className='rating'>
                    {[...Array(5)].map(( star,idx ) => {
                        const ratingValue = idx + 1
                        return (
                        <label>
                            <input 
                                type="radio" 
                                name='radio' 
                                onClick={()=>this.setState({rating: ratingValue})}
                                value={ratingValue}
                                />
                            <IoIosStar 
                                className='star'
                                color={ratingValue <= (this.state.hover || this.state.rating) ? "rgb(250,156,27)" : "black"}     
                                onMouseEnter={(() => this.setState({hover: ratingValue}))}
                                onMouseLeave={()=> this.setState({hover: null})}
                                />
                        </label>
                        )
                    })}
                </div>
                <h4>Review this product</h4>
                <p>Share your thoughts with other customers</p>
                {/* link will be to reviews/new page */}
                <Link className='reviewbtn' to='/reviews/new'>Write a customer review</Link>
            </div>
        )
    }
}

export default ProductShowReview