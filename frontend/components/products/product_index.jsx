import React from 'react'
import ProductIndexItem from './product_index_item'
class ProductIndex extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.requestProducts()
    }


    render() {
        const {products} = this.props
        return(
            <div className='index-container'>
                {products.map(product => (
                    <div>
                        <ProductIndexItem key={product.id} product={product}  />
                    </div>
                )
                )}
            </div>
        )
    }
}




export default ProductIndex