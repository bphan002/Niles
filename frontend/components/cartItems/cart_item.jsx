import React from 'react'

class CartItem extends React.Component {
    constructor(props) {
        super(props)
    }


    // addCart () {
    //     this.props.props.addToCart({
    //         product_id: this.props.props.product.id,
    //         user_id: this.props.props.currentUser.id,
    //         quantity: this.state.productQuantity
    //     })
    // }

    render() {
        console.log('check functions avaialble',this.props)
        // const product = this.props.item.id
        // console.log('this is the one cart_items',this.props)
        // console.log('title', this.props.cartItems)
        // console.log('product_id', product)
        // console.log('product name', this.props.products.product )
        // console.log('product_title', this.props.products)
        
        
        return (
            <div className='one-item-container'>
                <div className='one-image-container'>
                    <img src={this.props.item.image} alt="" />
                </div>
                <div className='one-item-info'>
                    <h1 id='checkout-title'>{this.props.item.title}</h1>
                    <p>${this.props.item.price}</p>
                    <div>
                        <p>Quantity: {this.props.item.quantity} </p>
                        <button className='checkout-btn' onClick={()=>this.props.deleteCartItem(this.props.item)}>Delete</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default CartItem
