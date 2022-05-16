import React from 'react'
import { Link } from 'react-router-dom'



//function if they are logged in they will see Logout button
//else they will see Sign Up and Login links
export default ({ currentUser, logoutUser }) => {
    const display = currentUser ? (
        <div>
            <button onClick={logoutUser}>Log Out</button>
        </div>
    ) : (
        <>
            <Link to='/demo'>Demo User</Link>
            <Link to='/signup'>Sign Up</Link>
            <Link to='/login'>Login</Link>
        </>
    )
    
    return (
                //Niles logo needed //
                //shopping cart/
        <header className='headers'>
                <img className='whiteLogo' src={window.white_logo} alt="" />
                <label htmlFor="search-bar"></label>
                <input type="text"/>
                {display}
        </header>
    )
}
