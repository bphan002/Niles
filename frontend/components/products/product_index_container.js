import { connect } from 'react-redux'
import ProductIndex from './product_index'
import { requestProducts } from '../../actions/products_action'


const toArray = vals => {
    if (vals.length === 0) {
        return []
    } else {
        return Object.values(vals)
    }
}

const mSTP = state => { 
    return {
        products: toArray(state.entities.products)
    }
}
const mDTP = dispatch => ({
    requestProducts: () => dispatch(requestProducts())
})

export default connect(mSTP,mDTP)(ProductIndex)