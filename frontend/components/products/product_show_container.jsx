import { connect } from 'react-redux'
import ProductShow from './product_show'
import { requestProduct } from '../../actions/products_action'
import { deleteReview } from '../../actions/reviews_action'

const mSTP = (state, ownProps) => { 
    return {
    product: state.entities.products[ownProps.match.params.productId],
}}


const mDTP = dispatch => ({
    requestProduct: id => dispatch(requestProduct(id)),
    deleteReview: id => dispatch(deleteReview(id))
})

export default connect(mSTP,mDTP)(ProductShow)