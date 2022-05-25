import {
    RECEIVE_CART_ITEMS,
    RECEIVE_CART_ITEM,
    REMOVE_CART_ITEM,
    UPDATE_CART_ITEM
} from "../actions/cartItems_action"


const cartItemsReducer = (oldState = {}, action) => {
    Object.freeze(oldState)
    let nextState = Object.assign({cartItems:{}}, oldState)

    switch (action.type) {
        case RECEIVE_CART_ITEMS:
            nextState.cartItems = action.cartItems
            return nextState
        case RECEIVE_CART_ITEM:
            nextState.cartItems[action.cartItems.id] = Object.assign({},action.cart)
            return nextState;

        case REMOVE_CART_ITEM:
            delete nextState[action.cartItemId]
            return nextState

        case UPDATE_CART_ITEM:
            nextState[cartItem.id] = action.cartItem
            return nextState
        default:
            return oldState
    }
}

export default cartItemsReducer

