import { connect } from 'react-redux'
import ProductShow from './product_show'
import { requestProduct } from '../../actions/products_action'

const mSTP = (state, ownProps) =>({
    product: state.entities.products[ownProps.match.params.productId]
})


const mDTP = dispatch => ({
    requestProduct: id => dispatch(requestProduct(id))
})

export default connect(mSTP,mDTP)(ProductShow)