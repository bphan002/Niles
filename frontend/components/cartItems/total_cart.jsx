import React from 'react'
import { Link } from 'react-router-dom'
import EmptyCart from './empty_cart'
import CartItemContainer from './cart_item_container'
import { requestCartItems } from '../../actions/cartItems_action'

class TotalCart extends React.Component {
    constructor(props) {
        super(props)
        this.emptyCart = this.emptyCart.bind(this)
    }


    componentDidMount() {
        this.props.requestCartItems()
    }

    emptyCart(e) {
        console.log(this.props.deleteCartItem)

        let allCartItems = this.props.cartItems
        console.log('all cart Items',allCartItems)
        for (let i = 0; i < allCartItems.length; i++) {
            this.props.deleteCartItem(allCartItems[i])
        }
    }



    render() {
        console.log('total cart props',this.props)
        let cartArray = Object.values(this.props.cartItems)

        let quantity = cartArray.reduce((sum, item) => sum + item.quantity,0)
        let totalCost = cartArray.reduce((sum, item) => sum + ((item.quantity)*(item.price)),0)
        console.log('from total cart', this.props)
        return (
            <div className='entire-page'>
                <div className='shopping-cart-container'>
                    <div className='title-container'>
                        <div className='shopping-cart-header'>
                            <h1 className='shopping-cart-title'>Shopping Cart</h1>
                            <span>Price</span>
                        </div>
                        {this.props.cartItems.map(
                            item => (
                                <>
                                    <CartItemContainer item={item} />
                                </>
                            )
                        )}
                        {this.props.cartItems.length < 1 ? null : 
                         <div className='checkout-container'>
                            <p className='subtotal'>Subtotal ({quantity}): <span className='total-cost'>${totalCost.toFixed(2)}</span></p>
                            <Link 
                                className='checkout-btn bigger' 
                                onClick={this.emptyCart} 
                                to='/products/checkout/'>Proceed to checkout
                            </Link>
                        </div>
                        }
                             {this.props.cartItems.length === 0 && <EmptyCart /> }
                    </div>
                </div>
            </div>
        )
    }

}

export default TotalCart