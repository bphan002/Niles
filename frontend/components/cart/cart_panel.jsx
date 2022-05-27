import React from 'react'
import { FaLock } from "react-icons/fa";
import { AiOutlineDown } from 'react-icons/ai'

class CartPanel extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            productQuantity: 1
        }
        this.addCart = this.addCart.bind(this)
        this.addToCartQuantity = this.addToCartQuantity.bind(this)
    }


    addCart () {
        console.log(this.state)
        this.props.props.addToCart({
            product_id: this.props.props.product.id,
            user_id: this.props.props.currentUser.id,
            quantity: this.state.productQuantity
        })
    }

    addToCartQuantity(e) {
        this.setState({productQuantity: e.currentTarget.value})
    }
    





    render() {
        console.log('cart panel props', this.props)
        const {price, quantity} = this.props.props.product

        const d = new Date()

        const monthArr= [
            'January',
            'February',
            'March',
            'April',
            'May',
            'June',
            'July',
            'August',
            'September',
            'October',
            'November',
            'December'
        ]

        const weekDay= [
            'Sunday',
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday',
            'Friday',
            'Saturday',
        ]
        const day = weekDay[d.getDay()+2]
        const dayNum = d.getDate() + 2
        const month = monthArr[d.getMonth()]

        return(
            <div className='cart-show-container'>
                <p className='show-price'><span className='invisible'>$</span>{price.toFixed(2)}</p>
                <div className='prime-parent'>
                    <img className='prime-logo' src={window.amazonprime_image} alt="" />
                </div>
            
                <p className='free'>FREE delivery for Prime members </p>
                <p className='delivery'> Delivery<span className='delivery'> {day}, {month} {dayNum}.</span></p>

                { quantity > 0 ? <p className='in-stock'>In Stock<span className='dot'>.</span></p> : <p>Out of stock</p>}

                <select className='qty-btn' onChange={this.addToCartQuantity}>
                    <option value='1'>Qty: 1</option>
                    <option value='2'>Qty: 2</option>
                    <option value='3'>Qty: 3</option>
                    <option value='4'>Qty: 4</option>
                    <option value='5'>Qty: 5</option>
                </select>
            
                <button onClick={this.addCart} className='cart-btn'>Add to Cart</button>
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