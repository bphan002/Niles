import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import ProductBar from './product_bar_item'
import { IoMdArrowDropdown } from "react-icons/io"
import { BsSearch } from "react-icons/bs"
import { GiHamburgerMenu } from "react-icons/gi";

import { proposalPlugins } from '@babel/preset-env/data/shipped-proposals'


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

// const hamburger_btn = document.querySelector('.hamburger')
// const hambuger_menu = document.querySelector('.mobile-nav')

// hamburger_btn.addEventListener('click', ()=> {
//     hamburger_btn.classList.toggle('is-active')
//     hambuger_menu.classList.toggle('is-active')
// })

// import React, { useState } from 'react';
// import { HamburgerIcon } from 'react-hamburger-icon';
 
// export function Menu() {
//   const [open, setOpen] = useState(false);
 
//   return <HamburgerIcon open={open} onClick={() => setOpen(!open)} />;
// }


export default ({ test, currentUser, cartItems,logoutUser,updateSearch, requestCartItems, addToCart }) => {
    let cartArray = Object.values(cartItems)
    const [search, setSearch] = useState('')

    useEffect(() => {
        requestCartItems()
    },[addToCart])

    let quantity = 0
    let arrayObject =Object.values(cartItems)
    arrayObject.forEach(object => {
        quantity += object.quantity
    })

    function navSearchSubmit(e) {
        e.preventDefault()
        const searchGlass= document.querySelector('.search-glass')
        // const searchBar = document.getElementById('search-bar')
        searchGlass.click()
        // searchBar.value= ''
        console.log(search)
    }

    function navSearchClick() {
        updateSearch(search)
        // setSearch('')
    }






    

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
            <nav className='headers'>
                    <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                <form className='nav-search-bar' onSubmit={navSearchSubmit}>
                    <input onChange={(e)=>setSearch(e.currentTarget.value)} type="text" id='search-bar' name='search-bar'/>
                   <Link to='/products/category' onClick={navSearchClick} className='search-glass'><BsSearch size={20} color={'black'}/></Link>
                </form>
                {display}
            </nav>
            <button class='hamburger'>
                <div class='bar'>
                    <GiHamburgerMenu/>
                </div>
            </button>
            <nav className='mobile-nav'>
                <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                <form className='nav-search-bar' onSubmit={navSearchSubmit}>
                    <input onChange={(e)=>setSearch(e.currentTarget.value)} type="text" id='search-bar' name='search-bar'/>
                    <Link to='/products/category' onClick={navSearchClick} className='search-glass'><BsSearch size={20} color={'black'}/></Link>
                </form>
            </nav>

            <ul className='category-bar'>
                {Object.keys(categories).map((key,idx) => (
                    <ProductBar key={idx} category={key} filter={categories[key]} />
                ))}
            </ul>
        </>
    )
}