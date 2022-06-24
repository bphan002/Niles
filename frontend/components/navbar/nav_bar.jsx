import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import ProductBar from './product_bar_item'
import { IoMdArrowDropdown } from "react-icons/io"
import { BsSearch } from "react-icons/bs"
import { GiHamburgerMenu } from "react-icons/gi";
import { MdOutlinePersonOutline, MdOutlineKeyboardArrowRight } from "react-icons/md";
import { AiOutlineClose, AiOutlineHome } from "react-icons/ai";
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
    const [sidebar, setSidebar] = useState(false)

    useEffect(() => {
        requestCartItems()
    },[addToCart])

    let quantity = 0
    let arrayObject =Object.values(cartItems)
    arrayObject.forEach(object => {
        quantity += object.quantity
    })


    const showSidebar = () => setSidebar(!sidebar)

    function navSearchSubmit(e) {
        e.preventDefault()
        const searchGlass= document.querySelector('.search-glass')
        // const searchBar = document.getElementById('search-bar')
        searchGlass.click()
        // searchBar.value= ''

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

            <nav className='mobile-nav'>
                <div className='mobile-nav-container'>
                <div className='navbar'>
                    <div className='mobile-left-header'>
                        <Link to="#" className='menu-bars'>
                            <GiHamburgerMenu size={25} onClick={showSidebar}/>
                        </Link>
                        <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                    </div>
                </div>
                <div className={sidebar ? 'nav-menu active' : 'nav-menu'}>
                <div className='nav-menu-items' onClick={showSidebar}> 
                    <div className='nav-menu-header'>
                            <Link to='#' className='menu-bars'>
                            <AiOutlineClose size={25} />
                            </Link>
                    </div>
                    <div className='nav-account-info'>
                        {currentUser ? <p>{currentUser.name}'s Account</p> : <Link to='login'>Sign In</Link>}
                        <span><Link to='login'><MdOutlinePersonOutline size={40}/></Link></span>
                    </div>
                    <p className='browse'>Browse</p>
                    <p className='nav-menu-amazon'>Amazon</p>
                    <div className='modal-container'>
                        <div className='nav-bar-home'>
                            <Link to='/'><p>Amazon Home</p></Link>
                            <Link to='/'><AiOutlineHome size={20} color={'black'}/></Link>
                        </div>
                        <h3>Top Departments For You</h3>
                        <ul className='modal-category-list'>
                            {Object.keys(categories).map((key,idx) => (
                                <ProductBar key={idx} category={key} filter={categories[key]} />
                                ))}
                        </ul>
                            
                        {/* <p className='navbar-toggle'> */}
                        {/* </p> */}
                    </div>
                </div>
            </div>
                <div className='mobile-nav-right-side'>
                    { currentUser ? (
                        <>
                            <p>{currentUser.name}</p>
                        </>
                    ):(
                        <Link to='login'>Sign In</Link> )
                    }
                    <Link to='login'><MdOutlineKeyboardArrowRight  size='20px'/></Link>
                    <Link to='login'><MdOutlinePersonOutline size='20px'/></Link>
                    <Link to={'/checkout'}><img className='cart-image2' src={window.cart_image} alt="" /></Link>
                    <p id='cartamt2'>{quantity === 0 ? "": quantity}</p>
                    { currentUser && <button className='btn logout' onClick={logoutUser}>Log Out</button>}
                </div>
                </div>
                    <form className='nav-search-bar' onSubmit={navSearchSubmit}>
                        <input onChange={(e)=>setSearch(e.currentTarget.value)} 
                            type="text" 
                            id='search-bar' 
                            placeholder='   Search Amazon'
                            name='search-bar'/>
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


// height: 100vh;
// width:265px;