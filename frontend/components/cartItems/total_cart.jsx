import React from 'react'
import { Link } from 'react-router-dom'
import EmptyCart from './empty_cart'

class TotalCart extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        console.log('mount working')
    }

    

    render() {
        console.log('cart_items',this.props)
        return (
            <div className='entire-page'>
                <div className='shopping-cart-container'>
                    <div className='title-container'>
                        <h1>Shopping Cart</h1>
                        {this.props.cartItems.length === 0 ? <EmptyCart /> : 'Cart is not empty and should render stuff'}
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