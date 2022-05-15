import React from 'react'
import { Link } from 'react-router-dom'



//function if they are logged in they will see Logout button
//else they will see Sign Up and Login links
export default ({ currentUser, logoutUser }) => {
    const display = currentUser ? (
        <div>
            <button onClick={()=> logoutUser}>Log Out</button>
        </div>
    ) : (
        <div>
            <Link to='/signup'>Sign Up</Link>
            <Link to='/login'>Login</Link>
        </div>
    )
    
    return (
        <header>
            <div>
                {display}
            </div>
        </header>
    )
}
