import * as cartItemsAPIUtils from '../utils/cart_items_utils'

export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS'
export const RECEIVE_CART_ITEM = 'RECEIVE_CART_ITEM'
export const UPDATE_CART_ITEM = 'UPDATE_CART_ITEM'
export const REMOVE_CART_ITEM = 'REMOVE_CART_ITEM'

const receiveCartItems = cartItems => ({
    type: RECEIVE_CART_ITEMS,
    cartItems
})

const receiveCartItem = cartItem => ({
    type: RECEIVE_CART_ITEM,
    cartItem
})

const removeCartItem = cartItemId => ({
    type: REMOVE_CART_ITEM,
    cartItemId
})

const updateCartItem = cartItem => ({
    type: UPDATE_CART_ITEM,
    cartItem
})

export const receiveCartItemsByUserId = userId => dispatch => (
    cartItemsAPIUtils.fetchCartItemsByUserId(userId)
        .then(cartItems => dispatch(receiveCartItems(cartItems)))
)

export const requestCartItem = cartItem => dispatch => (
    cartItemsAPIUtils.addCartItem(cartItem)
        .then(cartItem => dispatch(receiveCartItem(cartItem)))
)

export const patchCartItem = cartItem => dispatch => (
    cartItemsAPIUtils.updateCartItem(cartItem)
        .then(cartItem => dispatch(updateCartItem(cartItem)))
)

export const deleteCartItem = cartItemId => dispatch => (
    cartItemsAPIUtils.deleteCartItem(cartItemId)
        .then(()=> dispatch(removeCartItem(cartItemId)))
)


