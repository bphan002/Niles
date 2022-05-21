import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store'
import Root from './components/root'
import { getReviews } from './utils/review_utils'
import { deleteSession, postSession, postUser } from './utils/session'
import { loginUser, logoutUser} from './actions/session_actions'
import { fetchProducts } from './utils/product_utils'



document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root')
    let preloadedState = {};
    window.loginUser = loginUser
    window.logoutUser = logoutUser
   
 
    if (window.currentUser) {
        preloadedState = {
            session: {
                currentUser: window.currentUser
            }
        }
    }
    const store = configureStore(preloadedState)
    window.store = store
    window.getState = store.getState
    window.dispatch = store.dispatch
    window.root = root;
    window.fetchProducts = fetchProducts
    window.getReviews = getReviews
    ReactDOM.render(<Root store={store}/>, root)
})