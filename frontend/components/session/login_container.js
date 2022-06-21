import { connect } from 'react-redux';
import { loginUser } from '../../actions/session_actions';
import Login from './login';
import { clearErrors } from '../../actions/session_actions';

const mSTP = ({ errors }) => {
  return {
    errors: errors.session,
  };
};

const mDTP = dispatch => {
  return {
    processForm: (user) => dispatch(loginUser(user)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(mSTP, mDTP)(Login);
