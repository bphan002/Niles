import React from 'react'
import ProductShowReview from './product_show_review'

class ProductShow extends React.Component {
    constructor(props) {
        super(props)
    }
    componentDidMount() {
       
        this.props.requestProduct(this.props.match.params.productId)
    }
    
    render() {
        console.log('this props')
        // console.log(this.props.product)
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
                    <div className='review-show-container'>
                        {/* think of what props to pass into this product show component */}
                        {/* current user to know who left the review */}
                        {/* product id */}
                        {/* review crud functionality? */}
                        <ProductShowReview products={this.props.product}/> 
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