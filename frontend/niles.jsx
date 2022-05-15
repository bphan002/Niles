import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store'
import Root from './components/root'
import { deleteSession, postSession, postUser } from './utils/session'
import { loginUser, logoutUser} from './actions/session_actions'

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root')
    let preloadedState = undefined
    const store = configureStore(preloadedState)
    window.store = store
    window.login = loginUser
    window.logoutUser = logoutUser

    if (window.currentUser) {
        preloadedState = {
            session: {
                currentUser: window.currentUser
            }
        }
    }
    window.root = root;
    ReactDOM.render(<Root store={store}/>, root)
})