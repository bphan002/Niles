import { 
    CREATE_REVIEW, 
    REMOVE_REVIEW, 
    UPDATE_REVIEW 
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
            return nextState
        case UPDATE_REVIEW:
            nextState[action.review.id] = action.review
            return nextState        
        default:
            return oldState;
    }
}

export default reviewReducer