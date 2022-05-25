import { combineReducers } from "redux";
import productReducer from "./product_reducer";
import usersReducer from './users_reducer'
import reviewReducer from "./review_reducer";
import cartItemsReducer from "./cartItems_reducer"

const entitiesReducer = combineReducers({
    users: usersReducer,
    products: productReducer,
    reviews: reviewReducer,
    cartItems: cartItemsReducer
})

export default entitiesReducer