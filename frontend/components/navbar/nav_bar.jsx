import React from 'react'
import { Link } from 'react-router-dom'
import ProductBar from './product_bar_item'
import { IoMdArrowDropdown } from "react-icons/io";

const categories = {
    "All": '',
    "Toys & Games": 'toys',
    "Food & Grocery": 'food',
    "Beauty & Health": 'beauty',
    "Sports": 'sports',
    "Pet Supplies": 'pets',
    "Home, Garden & Tools": 'home',
    "Clothing": 'clothing',
    "Shoes": 'shoes',
    "Books": 'books',
    "Electronics": 'electronics',
    "Automotive": 'automotive',
    "Sports": 'sports',
}

//function if they are logged in they will see Logout button
//else they will see Sign Up and Login links
export default ({ currentUser, logoutUser,updateSearch }) => {
    const display = currentUser ? (
        <div className='logged-in'>
            <div className='greeting'>
                <p>Hello, {currentUser.name}</p>
                <p className='account'>Account & Lists<IoMdArrowDropdown className='arrow-down'/></p>
            </div>
            <Link to={'/checkout'}><img className='cart-image' src={window.cart_image} alt="" /></Link>
            <button className='btn logout' onClick={logoutUser}>Log Out</button>
        </div>
    ) : (
        <>
            <ul className='right-nav'>
                <li><Link to='/login' className='pre-dropdown'>Hello, Sign In<span>Account & Lists</span></Link>
                    <ul className='dropdown'>
                        <li>
                            <button className='nav-button'><Link className='clickable' to='/login'>
                                <p className='button-text'>Sign In</p></Link></button>
                        </li>
                        <li>
                            <p>New Customer?<Link to='/signup'><span> Start here</span>.</Link></p></li>
                    </ul>
                </li>
                {/* <li><img className='cart-image' src={window.cart_image}></img></li> */}
            </ul>
        </>
    )
    {/* <FontAwesomeIcon className='caret-down' icon="fas fa-caret-down" /> */}

    


    return (
        //shopping cart/
        <>
            <header className='headers'>
                    <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                    <label htmlFor="search-bar"></label>
                    <input onChange={(e)=>updateSearch(e.currentTarget.value)} className='search-bar' type="text" id='search-bar' name='search-bar'/>
                {display}
    
            </header>
            <ul className='category-bar'>
                {Object.keys(categories).map((key,idx) => (
                    <ProductBar key={idx} category={key} filter={categories[key]} />
                ))}
            </ul>
        </>
    )
}