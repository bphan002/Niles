import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { loginUser } from '../../actions/session_actions';
import Login from './login';

const mSTP = ({ errors }) => {
  return {
    errors: errors.login,
    formType: 'login',
    navLink: <Link to="/signup">sign up instead</Link>,
  };
};

const mDTP = dispatch => {
  return {
    processForm: (user) => dispatch(loginUser(user)),
  };
};

export default connect(mSTP, mDTP)(Login);
