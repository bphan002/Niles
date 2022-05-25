import * as cartItemsAPIUtils from '../utils/cart_items_utils'

export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS'
export const UPDATE_CART_ITEM = 'UPDATE_CART_ITEM'
export const REMOVE_CART_ITEM = 'REMOVE_CART_ITEM'
export const ADD_CART_ITEM = 'ADD_CART_ITEM'

const receiveCartItems = cartItems => ({
    type: RECEIVE_CART_ITEMS,
    cartItems
})

const removeCartItem = cartItemId => ({
    type: REMOVE_CART_ITEM,
    cartItemId
})

const updateCartItem = cartItem => ({
    type: UPDATE_CART_ITEM,
    cartItem
})

const addCartItem = cartItem => ({
    type: ADD_CART_ITEM,
    cartItem
})


export const requestCartItems = () => dispatch => (
    cartItemsAPIUtils.fetchCartItems()
        .then(cartItems => dispatch(receiveCartItems(cartItems)))
)

export const addToCart = cartItem => dispatch => (
    cartItemsAPIUtils.addCartItem(cartItem) 
        .then(cartItem => dispatch(addCartItem(cartItem)))
)

export const updateCartItems = cartItem => dispatch => (
    cartItemsAPIUtils.updateCartItem(cartItem)
        .then(cartItem => dispatch(updateCartItem(cartItem)))
)

export const deleteCartItem = cartItemId => dispatch => (
    cartItemsAPIUtils.deleteCartItem(cartItemId)
        .then(()=> dispatch(removeCartItem(cartItemId)))
)


