import React from 'react'

class CartItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {        
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
                        <button className='checkout-btn' id='remove-pad' onClick={()=>this.props.deleteCartItem(this.props.item)}>Delete</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default CartItem
