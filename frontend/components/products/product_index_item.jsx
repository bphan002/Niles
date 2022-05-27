import React from 'react'
import { Link } from 'react-router-dom'
import DisplayRating from '../reviews/display_rating'

class ProductIndexItem extends React.Component {
    constructor(props) {
        super(props)
        this.titleChopper = this.titleChopper.bind(this)
    }
    

    titleChopper(title) {
        if (title.length > 25) {
            title = title.substring(0,24) + "..."
            console.log('title',title)
            return title
        } else {
            console.log('title',title)
            return title
        }
    }
    
    render() {
        const {product} = this.props
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
            'Sun',
            'Mon',
            'Tues',
            'Wed',
            'Thurs',
            'Fri',
            'Sat',
        ]
        const day = weekDay[d.getDay()+2]
        const dayNum = d.getDate()
        const month = monthArr[d.getMonth()]
        const year = d.getFullYear()

        console.log('check this!!!!',this.props.product.stars)
        return (
   
            <div className='product-container'>
                <div className='image-container'>
                  <Link to={`/products/${product.id}`}><img className='image' src={product.photoUrl} alt="" /></Link>
                </div>
                <div>
                    <Link to={`/products/${product.id}`}><h1 className='prod-title'>{product.title.length > 102 ? product.title + '...' : product.title}</h1></Link>
                    <DisplayRating 
                        displayType='displaystar' 
                        rating={this.props.product.stars} 
                        />
                    <Link to={`/products/${product.id}`}><p className='price'><span className='invisible'>$</span>{product.price.toFixed(2)}</p></Link>
                    <span className='prime-free'>
                        <img className='prime-index-logo' src={window.amazonprime_image} alt="" />
                         <p className='free-index'> FREE Delivery</p>
                         <p className='delivery-index'> {day}, {month} {dayNum}</p>
                    </span>

                </div>
            </div>
        )
    }
}

export default ProductIndexItem