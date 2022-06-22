import React from 'react'

class CartItem extends React.Component {
    constructor(props) {
        super(props)

    }

    render() {  
        
        console.log('cart props',this.props)
        return (
            <div className='one-item-container'>
                <div className='one-image-container'>
                    <img src={this.props.item.image} alt="" />
                </div>
                <div className='one-item-info'>
                    <h1 id='checkout-title'>{this.props.item.title}</h1>
                    <p>${this.props.item.price}</p>
                    <select className='qty-btn' onChange={this.props.updateCartItems}>
                    <option value='1'>Qty: 1</option>
                    <option value='2'>Qty: 2</option>
                    <option value='3'>Qty: 3</option>
                    <option value='4'>Qty: 4</option>
                    <option value='5'>Qty: 5</option>
                </select>
                    <div>
                        <p>Quantity: {this.props.item.quantity} </p>
                        <button className='checkout-btn' id='remove-pad' onClick={()=>this.props.deleteCartItem(this.props.item)}>Delete</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default CartItem
