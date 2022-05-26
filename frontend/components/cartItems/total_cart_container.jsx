import { connect } from "react-redux";
import TotalCart from "./total_cart";
import { 
    requestCartItems,
    addToCart, 
    updateCartItems,
    deleteCartItem  
} from "../../actions/cartItems_action";


const mSTP = state => ({
    cartItems: Object.values(state.entities.cartItems),
})

const mDTP = dispatch => ({
    requestCartItems: () => dispatch(requestCartItems()),
    addToCart: cartItem => dispatch(addToCart(cartItem)),
    updateCartItems: cartItem => dispatch(updateCartItems(cartItem)),
    deleteCartItem: cartItemId => dispatch(deleteCartItem(cartItemId))
})

export default connect(mSTP, mDTP)(TotalCart)