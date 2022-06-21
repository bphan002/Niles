import React, { useEffect } from 'react'
import { Link } from 'react-router-dom'
import ProductBar from './product_bar_item'
import { IoMdArrowDropdown } from "react-icons/io"
import { BsSearch } from "react-icons/bs"
BsSearch
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



export default ({ currentUser, cartItems,logoutUser,updateSearch, requestCartItems, addToCart }) => {
    let cartArray = Object.values(cartItems)
    console
    useEffect(() => {
        requestCartItems()
    },[addToCart])

    let quantity = 0
    let arrayObject =Object.values(cartItems)
    console.log('array',arrayObject)
    arrayObject.forEach(object => {
        quantity += object.quantity
        //  console.log('itemQuantity',itemQuantity)
    })

    // console.log(itemQuantity)

    // console.log(itemQuantity)
    const display = currentUser ? (
        <div className='logged-in'>
           
            <div className='greeting'>
            <p id='cartamt'>{quantity === 0 ? "": quantity}</p>
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
        <>
            <header className='headers'>
                    <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                    <label htmlFor="search-bar"></label>
                    <input onChange={(e)=>updateSearch(e.currentTarget.value)} className='search-bar' type="text" id='search-bar' name='search-bar'>
                    </input>
                    <div className='search-glass'><BsSearch size={20} color={'black'}/></div>
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