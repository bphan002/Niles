import { 
    RECEIVE_PRODUCTS, 
    RECEIVE_PRODUCT 
} from "../actions/products_action";

const productReducer = (oldState = {}, action) => {
    // debugger
    Object.freeze(oldState)
    let nextState = Object.assign({}, oldState)
    switch (action.type) {
        case RECEIVE_PRODUCTS:
            return action.products
        case RECEIVE_PRODUCT:
            // console.log(action)
            nextState[action.product.id] = action.product
            return nextState;
        default:
            return oldState;
    }
}

export default productReducer