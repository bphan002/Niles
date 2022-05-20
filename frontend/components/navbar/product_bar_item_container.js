import { connect } from 'react-redux'
import ProductBar from './product_bar_item'
import { requestProducts } from '../../actions/products_action'

const mSTP = state => ({
    products: Object.values(state.entities.products)
})

const mDTP = dispatch => ({
    requestProducts: () => dispatch(requestProducts())
})

export default connect(mSTP, mDTP)(ProductBar)
