import React from 'react'


class CartItem extends React.Component {
    constructor(props) {
        super(props)
        // this.state = {
        //     productQuantity: this.props.item.quantity,
        // }
        // this.addToCartQuantity = this.addToCartQuantity.bind(this)
    }


    // this.props.addToCart({
    //     product_id: this.props.item.product.id,
    //     usesr_d: this.props.user_id,
    //     quantity: 4
    // })
    // addToCartQuantity(e) {
    //     console.log('e value',e.currentTarget.value)
    //     this.setState({productQuantity: e.currentTarget.value})

    //     this.props.addToCart({
    //         product_id: this.props.item.product_id,
    //         user_id: this.props.user_id,
    //         quantity: this.state.productQuantity
    //     })
    // }

   
    
    render() {  
   
        console.log('add to cart quantity',this.props.addToCart)

        return (
            <div className='one-item-container'>
                <div className='one-image-container'>
                    <img src={this.props.item.image} alt="" />
                </div>
                <div className='one-item-info'>
                    <h1 id='checkout-title'>{this.props.item.title}</h1>
                    <p>${this.props.item.price}</p>
                    {/* <select value={this.state.productQuantity} className='qty-btn' onChange={this.addToCartQuantity}>
                    <option value='1'>Qty: 1</option>
                    <option value='2'>Qty: 2</option>
                    <option value='3'>Qty: 3</option>
                    <option value='4'>Qty: 4</option>
                    <option value='5'>Qty: 5</option>
                    <option value='5'>Qty: 6</option>
                    <option value='5'>Qty: 7</option>
                    <option value='5'>Qty: 8</option>
                    <option value='5'>Qty: 9</option>
                    <option value='5'>Qty: 10</option>
                    <option value='5'>Qty: 11</option>
                    <option value='5'>Qty: 12</option>
                </select> */}
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
