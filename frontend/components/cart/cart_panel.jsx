import React from 'react'
import { FaLock } from "react-icons/fa";
import { AiOutlineDown } from 'react-icons/ai'

class CartPanel extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        console.log('cart_show',this.props)
        const {price, quantity} = this.props.props.product
        return(
            <div className='cart-show-container'>
                <p className='show-price'><span className='invisible'>$</span>{price}</p>
                <div className='prime-parent'>
                    <img className='prime-logo' src={window.amazonprime_image} alt="" /><span className='one-day'> One-Day</span>
                </div>
                <p>&<span className='free-return'> FREE Returns</span><span className='chevron'>   <AiOutlineDown/></span></p>
                
                { quantity > 0 ? <p className='in-stock'>In stock</p> : <p>Out of stock</p>}
                <button className='cart-btn'>Add to Cart</button>
                <FaLock /> <span className='secure'>Secure transaction</span>

                <p className='sold'><span className='gray'>Ships from</span> Niles.com</p>
                <p className='sold'><span className='gray'>Sold by</span> Niles.com</p>

                <p>Return policy:<span className='eligible'> Eligible for Return, Refund or Replacement within 30 days of receipt</span></p>

                <form className='gift'>
                    <input type='checkbox'></input>
                    <label htmlFor="">Add a gift receipt for easy returns</label>
                </form>
            </div>
        )
    }
}

export default CartPanel