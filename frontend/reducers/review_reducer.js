import { RECEIVE_PRODUCT } from "../actions/products_action";
import { 
    CREATE_REVIEW, 
    REMOVE_REVIEW, 
    UPDATE_REVIEW,
    RECEIVE_REVIEW
} from "../actions/reviews_action";

const reviewReducer = (oldState = {}, action) => {
    Object.freeze(oldState)
    let nextState = Object.assign({}, oldState)
    switch (action.type) {
        case CREATE_REVIEW:
            nextState[action.review.id] = action.review
            return nextState
        case REMOVE_REVIEW:
            delete nextState[action.reviewId]
            console.log('remove review', nextState)
            return nextState
        case UPDATE_REVIEW:
            nextState[action.review.id] = action.review
            return nextState
        case RECEIVE_PRODUCT:
            return action.product.reviews 
        case RECEIVE_REVIEW:
            nextState[action.review.id] = action.review
            return nextState         
        default:
            return oldState;
    }
}

export default reviewReducer