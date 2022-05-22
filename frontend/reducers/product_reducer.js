import { 
    RECEIVE_PRODUCTS, 
    RECEIVE_PRODUCT,
    UPDATE_SEARCH
} from "../actions/products_action";

const productReducer = (oldState = {}, action) => {
    // debugger
    Object.freeze(oldState)
    let nextState = Object.assign({}, oldState)
    switch (action.type) {
        case RECEIVE_PRODUCTS:
            nextState.products = action.products
            return nextState
        case RECEIVE_PRODUCT:
            nextState.products[action.product.id] = action.product
            return nextState;
        case UPDATE_SEARCH:
            nextState.query = action.query
            return nextState
        default:
            return oldState;
    }
}

export default productReducer