import React from 'react'
import { connect } from 'react-redux'
import NavBar from './nav_bar'
import { logoutUser } from '../../actions/session_actions'



const mSTP = state => ({
    currentUser: state.session.currentUser
})

const mDTP = dispatch => ({
    logoutUser: () => dispatch(logoutUser())
})


export default connect(mSTP, mDTP)(NavBar)