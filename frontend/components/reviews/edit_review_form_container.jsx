import React from 'react'
import {connect} from 'react-redux'
import { getReview, patchReview} from '../../actions/reviews_action'
import ReviewForm from './leave_review_form'
import {withRouter} from 'react-router-dom'

class EditReviewForm extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.getReview(this.props.match.params.reviewId)
    }

    render() {

        if (!this.props.review) return null;
        return (
            <ReviewForm
                {...this.props}
            />
        )
    }
}

const mSTP = (state,ownProps) =>
{
    return {
        formType: 'Edit Form',
        review: state.entities.reviews[ownProps.match.params.reviewId]
    }  
}

const mDTP = dispatch => ({
    getReview: reviewId => dispatch(getReview(reviewId)),
    action: review => dispatch(patchReview(review))
})

export default withRouter(connect(mSTP,mDTP)(EditReviewForm))