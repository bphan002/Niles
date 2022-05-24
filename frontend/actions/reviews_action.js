import * as reviewUtils from '../utils/review_utils'

export const CREATE_REVIEW = 'RECEIVE_REVIEW'
export const REMOVE_REVIEW = 'DELETE_REVIEW'
export const UPDATE_REVIEW = 'UPDATE_REVIEW' 
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS'
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW'

const createReview = review => ({
    type: CREATE_REVIEW,
    review
})

const receiveReviews = reviews => ({
    type: RECEIVE_REVIEWS,
    reviews
})

const receiveReview = review => ({
    type: RECEIVE_REVIEW,
    review
})


const updateReview = review => ({
    type: UPDATE_REVIEW,
    review
})

const removeReview = reviewId => ({
    type: REMOVE_REVIEW,
    reviewId
})



export const leaveReview = data => dispatch => {
    return reviewUtils.createReview(data)
        .then(review =>     
        {
        return dispatch(createReview(review))
        })      
}

export const patchReview = data => dispatch => (
    reviewUtils.updateReview(data)
        .then(review => dispatch(updateReview(review)))
)

export const deleteReview = id => dispatch => (
    reviewUtils.deleteReview(id)
        .then(review => dispatch(removeReview(id)))
)


export const getReview = reviewId => dispatch => (
    reviewUtils.getReview(reviewId)
        .then( review => dispatch(receiveReview(review)))
)

