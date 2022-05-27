import React from 'react'
import { connect } from "react-redux";
import { requestProducts } from "../../actions/products_action";
import ProductIndexItem from './product_index_item'; 

class ProductCategoryIndex extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.requestProducts({category: this.props.match.params.category})
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.category !== this.props.match.params.category) {
            this.props.requestProducts({category: this.props.match.params.category})
        }
    }


    searchMatches(query, product) {
        if (!query) {
            return true
        }
        query = query.toLowerCase()
        return product.title.toLowerCase().includes(query)
    }

    render() {
        const {products} = this.props
        return (
                <div className='index-container'>
                    {Object.values(products.products??{}).filter((product)=>this.searchMatches(products.query,product)).map(product => (
                        <div>
                            <ProductIndexItem key={product.id} product={product}  />
                        </div>
                    )
                    )}
                </div>
        )
    }
} 

const toArray = vals => {
    if (vals.length === 0) {
        return []
    } else {
        return Object.values(vals)
    }
}



const mSTP = state => 
{
    return {
        products: state.entities.products
    }
}

const mDTP = dispatch => ({
    requestProducts: data => dispatch(requestProducts(data))
})

export default  connect (mSTP,mDTP)(ProductCategoryIndex)

