import { connect } from 'react-redux'
import NavBar from './nav_bar'
import { logoutUser } from '../../actions/session_actions'
import { updateSearch } from '../../actions/products_action'


const mSTP = state => ({
    currentUser: state.session.currentUser,
    cartItems: state.cartItems
})

const mDTP = dispatch => ({
    logoutUser: () => dispatch(logoutUser()),
    updateSearch: (query) => dispatch(updateSearch(query))
})


export default connect(mSTP, mDTP)(NavBar)