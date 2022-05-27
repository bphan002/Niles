import React from 'react'
import { Link } from 'react-router-dom'

function EmptyCart() {
    return (
        <div>
            <h1 className='empty'>Your Nile's Cart is empty.</h1>
            <Link to='/products/category'><p className='continue-shopping'>Click here to continue shopping</p></Link>
        </div>
    )
}


export default EmptyCart