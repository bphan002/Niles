import React from 'react'
import { Link } from 'react-router-dom'

class ProductBar extends React.Component {
    constructor(props) {
        super(props)
    }
    
    render() {
        const {filter, category} = this.props
        return (
            <li>
                <Link to={`/products/category/${filter}`}>
                    <p className='category-item'>{category}</p>
                </Link>
            </li>
        )
    }

}

export default ProductBar