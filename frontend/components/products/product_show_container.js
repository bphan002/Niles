import { connect } from 'react-redux'
import ProductShow from './product_show'
import { requestProduct } from '../../actions/products_action'
import { deleteReview } from '../../actions/reviews_action'
import { addToCart } from '../../actions/cartItems_action'

const mSTP = (state, ownProps) => {
    let product
    // this checks if this exist first before returning so 
    // we don't get an error when the page trys to load something that doesn't exist yet
    if (state.entities.products.products) {
        product = state.entities.products.products[ownProps.match.params.productId]
    }
    return {
        product: product,
        reviews: state.entities.reviews,
    }
}


const mDTP = dispatch => ({
    requestProduct: id => dispatch(requestProduct(id)),
    deleteReview: id => dispatch(deleteReview(id)),
    addToCart: cartItem => dispatch(addToCart(cartItem))
})

export default connect(mSTP,mDTP)(ProductShow)