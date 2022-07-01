import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import ProductBar from './product_bar_item'
import { IoMdArrowDropdown } from "react-icons/io"
import { BsSearch } from "react-icons/bs"
import { GiHamburgerMenu } from "react-icons/gi";
import { MdOutlinePersonOutline, MdOutlineKeyboardArrowRight } from "react-icons/md";
import { AiOutlineClose, AiOutlineHome } from "react-icons/ai";

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


export default ({ test, currentUser, cartItems,logoutUser,updateSearch, requestCartItems, addToCart }) => {
    let cartArray = Object.values(cartItems)
    const [search, setSearch] = useState('')
    const [sidebar, setSidebar] = useState(false)

    useEffect(() => {
        if (currentUser) {
            requestCartItems()
        }
    },[addToCart])

    let quantity = 0
    let arrayObject =Object.values(cartItems)
    arrayObject.forEach(object => {
        quantity += object.quantity
    })
    
  
 

    const showSidebar = () => {
        const body = document.getElementById('black')
        const xbutton = document.getElementById('xbutton')
        if(!sidebar) {
            
            body.classList.add("toggle")
            xbutton.classList.add("display")
        } else {
            body.classList.remove("toggle")
            xbutton.classList.remove("display")
        }
        setSidebar(!sidebar)
    }

    function hide() {
        setSidebar(false)
        const body = document.getElementById('black')
        body.classList.remove("toggle")
        const xbutton = document.getElementById('xbutton')
        xbutton.classList.remove("display")

    }
   
      
        
    function navSearchSubmit(e) {
        e.preventDefault()
        const searchGlass= document.querySelector('.search-glass')
        searchGlass.click()
    }

    function navSearchClick() {
        updateSearch(search)
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
            </ul>
        </>
    )
 
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

            <nav id='mobile-nav' className='mobile-nav'>
                <div className='mobile-nav-container'>
                <div className='navbar'>
                    <div className='mobile-left-header'>
                            <GiHamburgerMenu size={25} onClick={showSidebar}/>
                        <Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link>
                    </div>
                </div>
                <div className={sidebar ? 'nav-menu active' : 'nav-menu'}>
                <div className='nav-menu-items' onClick={showSidebar}> 
                    <div className='nav-menu-header'>
                            <Link to='#' className='menu-bars'>
                            <AiOutlineClose size={25} className='xbutton' id='xbutton'/>
                            </Link>
                    </div>
                    <div className='nav-account-info'>
                        {currentUser ? <p>{currentUser.name}'s Account</p> : <Link to='/login'>Sign In</Link>}
                        <span><Link to='/login'><MdOutlinePersonOutline size={40}/></Link></span>
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
                            
                    </div>
                </div>
            </div>
                <div className='mobile-nav-right-side'>
                    { currentUser ? (
                        <>
                            <p>{currentUser.name}</p>
                        </>
                    ):(
                        <Link to='/login'>Sign In</Link> )
                    }
                    <Link to='/login'><MdOutlineKeyboardArrowRight  size='20px'/></Link>
                    <Link to='/login'><MdOutlinePersonOutline size='20px'/></Link>
                    <Link
                        style={{position:'relative'}}
                        to={'/checkout'}><img className='cart-image2' 
                        src={window.cart_image} alt="" />
                        {console.log('error?')}
                        <p id='cartamt2'>{quantity === 0 || currentUser === null ? "": quantity}</p>
                    </Link>
                    { currentUser && <button className='btn logout' onClick={logoutUser}>Log Out</button>}
                </div>
                </div>
                    <form className='nav-search-bar' onSubmit={navSearchSubmit}>
                        <input onChange={(e)=>setSearch(e.currentTarget.value)} 
                            type="text" 
                            placeholder='   Search Niles'
                            />
                        <Link to='/products/category' onClick={navSearchClick} className='search-glass'><BsSearch size={20} color={'black'}/></Link>
                    </form>
            </nav>
            <div className='black' id='black' onClick={hide}>

            </div>

            <ul className='category-bar'>
                {Object.keys(categories).map((key,idx) => (
                    <ProductBar key={idx} category={key} filter={categories[key]} />
                    ))}
            </ul>
        </>
    )
}


