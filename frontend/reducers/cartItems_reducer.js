import {
    RECEIVE_CART_ITEMS,
    ADD_CART_ITEM,
    REMOVE_CART_ITEM,
    UPDATE_CART_ITEM
} from "../actions/cartItems_action"


const cartItemsReducer = (oldState = {}, action) => {
    Object.freeze(oldState)
    let nextState = Object.assign({}, oldState)

    switch (action.type) {
        case RECEIVE_CART_ITEMS:
            nextState = action.cartItems
            return nextState
        case ADD_CART_ITEM:
            nextState[action.cartItem.id] = Object.assign({},action.cartItem)
            return nextState;
        case REMOVE_CART_ITEM:
            delete nextState[action.cartItemId.id]
            return nextState
        case UPDATE_CART_ITEM:
            nextState[action.cartItem.id] = Object.assign({}, action.cartItem)
            return nextState
        default:
            return oldState
    }
}

export default cartItemsReducer

