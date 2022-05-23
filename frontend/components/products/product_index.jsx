import React from 'react'
import ProductIndexItem from './product_index_item'
class ProductIndex extends React.Component {
    constructor(props) {
        super(props)
    }



    componentDidMount() {
        this.props.requestProducts()
    }

    searchMatches(query, product) {
        console.log('query',query)
        console.log('product',product)
        return product.title.includes(query)
    }


    render() {
        const {products} = this.props
        console.log('products_index', products)
        return(
            <div className='index-container'>
                {products.products.filter((product)=>this.searchMatches(products.query,product))
                        .map(product => (
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