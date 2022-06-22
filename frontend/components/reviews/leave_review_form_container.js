import { connect } from 'react-redux'
import ReviewForm from './leave_review_form'
import { leaveReview } from '../../actions/reviews_action'


const mSTP = (state, ownProps) => {
    Object.values(state.entities.products.products)[0].title
    return {
        formType: "Create Review",
        fullName: state.session.currentUser.name,
        product: Object.values(state.entities.products.products)[0],
        review : {
            product_id: ownProps.match.params.productId,
            header: '',
            comment: '',
            rating: '',
        }
    }
}



const mDTP = dispatch => {
    return {
            action: review => dispatch(leaveReview(review))
    }
}

export default connect(mSTP, mDTP)(ReviewForm)