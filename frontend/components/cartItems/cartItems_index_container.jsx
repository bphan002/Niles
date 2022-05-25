// import { connect } from "react-redux";
// import CartItemsIndex from "./cartItems_index";
// import { receiveCartItemsByUserId,
//     requestCartItem, 
//     patchCartItem, 
//     deleteCartItem 
// } 
//     from "../../actions/cartItems_action";


// const mSTP = state => ({
//     cartItems: Object.values(state.entities.cartItems)
// })

// const mDTP = dispatch => ({
//     receiveCartItemsByUserId: userId => dispatch(receiveCartItemsByUserId(userId)),
//     requestCartItem: cartItem => dispatch(requestCartItem(cartItem)),
//     patchCartItem: cartItem => dispatch(patchCartItem(cartItem)),
//     deleteCartItem: cartItemId => dispatch(deleteCartItem(cartItemId))
// })

// export default connect(mSTP, mDTP)(CartItemsIndex)