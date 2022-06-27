import React from 'react'


class CartItem extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            productQuantity: this.props.item.quantity,
        }
        this.addToCartQuantity = this.addToCartQuantity.bind(this)
    }

    addToCartQuantity(e) {
        this.setState({productQuantity: e.currentTarget.value},()=> {
            this.props.updateCartItems({
                product_id: this.props.item.product_id,
                user_id: this.props.user_id,
                quantity: this.state.productQuantity
            })
        })

    }

   
    
    render() {  
        let range = []

        for (let i = 1; i < 11; i++) {
            range.push(i)
        }


        return (

            <div className='one-item-container'>
                <div className='one-image-container'>
                    <img src={this.props.item.image} alt="" />
                </div>
                <div className='one-item-info'>
                    <div className='one-item-title-price'>
                        <h1 id='checkout-title'>{this.props.item.title}</h1>
                        <p>${this.props.item.price}</p>    
                    </div>
                    <div className='checkout-btns'>
                    <select value={this.state.productQuantity} className='qty-btn' onChange={this.addToCartQuantity}>
                    {range.map( number =><option key={number} value={number}>Qty: {number}</option>)
                    }
                </select>
                        <button className='checkout-btn' id='remove-pad' onClick={()=>this.props.deleteCartItem(this.props.item)}>Delete</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default CartItem
