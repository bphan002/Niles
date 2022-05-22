import { connect } from 'react-redux'
import ReviewForm from './review_form'
import { leaveReview } from '../../actions/reviews_action'


const mSTP = (state, ownProps) => {
    return {
        reviews: {
            user_id: state.session.currentUser.id,
            product_id: ownProps.match.params.productId,
            rating: '',
            comment: '',
            header: ''
        },
        formType: "Create Review",
        fullName: state.session.currentUser.name
    }
}



const mDTP = dispatch => {
    return {
            action: review => dispatch(leaveReview(review))
    }
}

export default connect(mSTP, mDTP)(ReviewForm)