import React from 'react'
import { Link } from 'react-router-dom'

class TotalCart extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        return (
            <div className='entire-page'>
                <div className='shopping-cart-container'>
                    <div className='title-container'>
                        <h1>Shopping Cart</h1>
                    </div>
                </div>
                <div className='checkout-container'>
                    <p>Subtotal</p>
                    <Link className='checkout-btn bigger' to='/'>Proceed to checkout</Link>
                 </div>
            </div>
        )
    }

}

export default TotalCart