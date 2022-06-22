import React from 'react'
import {connect} from 'react-redux'
import { getReview, patchReview} from '../../actions/reviews_action'
import ReviewForm from './leave_review_form'
import {withRouter} from 'react-router-dom'

class EditReviewForm extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
     
        console.log('statesssssss',this.state)
        if (!this.props.review) return null;
        return (
            <ReviewForm {...this.props}/>
        )
    }
}

const mSTP = (state,ownProps) =>
{
    return {
        formType: 'Edit Form',
        review: state.entities.reviews[ownProps.match.params.reviewId],
        fullName: state.session.currentUser.name,
        product: Object.values(state.entities.products.products)[0],
    }  
}

const mDTP = dispatch => ({
    getReview: reviewId => dispatch(getReview(reviewId)),
    action: review => dispatch(patchReview(review))
})

export default withRouter(connect(mSTP,mDTP)(EditReviewForm))






