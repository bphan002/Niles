import React from 'react'
import { Link } from 'react-router-dom'
import EmptyCart from './empty_cart'
import CartItem from './cart_item'

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
                        {this.props.cartItems.length === 0 ? <EmptyCart /> : this.props.cartItems.map(
                            item => (
                                <>
                                    <CartItem deleteCartItem={this.props.deleteCartItem} props={this.props.products} item={item} />
                                </>
                            )
                        )}
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