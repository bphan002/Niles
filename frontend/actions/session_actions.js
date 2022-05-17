import * as SessionApiUtil  from '../utils/session'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER'
export const LOGOUT_CURRENT_USER =  'LOGOUT_CURRENT_USER'
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS'
export const CLEAR_ERRORS = 'CLEAR_ERRORS'
//main point of an action creator is to return a plain javascript object with a type and payload

export const clearErrors = () => ({
    type: CLEAR_ERRORS,
})


const receiveCurrentUser = user => ({
    type: RECEIVE_CURRENT_USER,
    user
})

const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER
})

const receiveErrors = errors => ({
    type: RECEIVE_SESSION_ERRORS,
    errors
})

export const loginUser = formUser => dispatch => (
    SessionApiUtil.postSession(formUser)
        .then(user => dispatch(receiveCurrentUser(user)), 
        error => (dispatch(receiveErrors(error.responseJSON))))
)

export const logoutUser = () => dispatch => (
    SessionApiUtil.deleteSession()
        .then(() => dispatch(logoutCurrentUser()))
)

export const createNewUser = formUser => dispatch => (
    SessionApiUtil.postUser(formUser)
        .then(user => dispatch(receiveCurrentUser(user)),
        error => (dispatch(receiveErrors(error.responseJSON))))
)








