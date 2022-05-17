import React from 'react'
import { Link } from 'react-router-dom'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'


//function if they are logged in they will see Logout button
//else they will see Sign Up and Login links
export default ({ currentUser, logoutUser }) => {
    const display = currentUser ? (
        <div class='logged-in'>
            <div class='greeting'>
                <p>Hello, {currentUser.name}</p>
                <p class='account'>Account & Lists</p>
            </div>
            <button className='btn logout' onClick={logoutUser}>Log Out</button>
        </div>
    ) : (
        <>
            <ul className='right-nav'>
                <li><Link className='pre-dropdown'>Hello, Sign In<span>Account & Lists</span></Link>
                    <ul className='dropdown'>
                        <li><button className='nav-button'><Link className='clickable' to='/login'><p class='button-text'>Sign In</p></Link></button></li>
                        <li><p>New Customer?<Link to='/signup'><span> Start here</span>.</Link></p></li>
                    </ul>
                </li>
                {/* <li><img className='cart-image' src={window.cart_image}></img></li> */}
            </ul>
        </>
    )
    {/* <FontAwesomeIcon className='caret-down' icon="fas fa-caret-down" /> */}
    

  


    return (
        //Niles logo needed //
        //shopping cart/
        <header className='headers'>
                <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                <label htmlFor="search-bar"></label>
                <input className='search-bar' type="text" id='search-bar' name='search-bar'/>
                {display}
               {/* <li className='cart-text'>Cart</li> */}
        </header>
    )
}
