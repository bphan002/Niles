import React from 'react'
import { Link } from 'react-router-dom'
import EmptyCart from './empty_cart'
import CartItem from './cart_item'

class TotalCart extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        let cartArray = Object.values(this.props.cartItems)

        //have an array of objects
        // console.log('quantity', cartArray.reduce(cart => cart.quantity) )
        
        let quantity = cartArray.reduce((sum, item) => sum + item.quantity,0)
        let totalCost = cartArray.reduce((sum, item) => sum + ((item.quantity)*(item.price)),0)
        console.log(totalCost)
        return (
            <div className='entire-page'>
                <div className='shopping-cart-container'>
                    <div className='title-container'>
                        <h1 className='shopping-cart-title'>Shopping Cart</h1>
                        {this.props.cartItems.length === 0 ? <EmptyCart /> : this.props.cartItems.map(
                            item => (
                                <>
                                    <CartItem deleteCartItem={this.props.deleteCartItem} props={this.props.products} item={item} />
                                </>
                            )
                        )}
                {this.props.cartItems.length <1 ? null : 
                <div className='checkout-container'>
                <p className='subtotal'>Subtotal ({quantity}): <span className='total-cost'>${totalCost.toFixed(2)}</span></p>
                <Link className='checkout-btn bigger' to='/products/checkout/'>Proceed to checkout</Link>
                </div>}
                    </div>
                </div>
            </div>
        )
    }

}

export default TotalCart