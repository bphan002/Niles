import {connect} from 'react-redux'
import { createNewUser } from '../../actions/session_actions'
import Signup from './signup'

// const mSTP = ({ errors }) => {
//     return {
//       errors: errors.session,
//       formType: 'signup',
//       navLink: <Link to="/login">log in instead</Link>,
//     };
//   };


const mDTP = dispatch => ({
    createNewUser: formUser => dispatch(createNewUser(formUser)),
    // receiveSessionErrors: errors => dispatch(receiveErrors(errors))
})

export default connect(null, mDTP)(Signup)