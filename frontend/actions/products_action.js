import * as productAPIUtils from '../utils/product_utils'

export const RECEIVE_PRODUCTS = 'RECEIVE_PRODUCTS'
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT'

const receiveProducts = products => ({
    type: RECEIVE_PRODUCTS,
    products
})

const receiveProduct = product => ({
    type: RECEIVE_PRODUCT,
    product
})


export const requestProducts = data => dispatch => (
   productAPIUtils.fetchProducts(data)
    .then(products => dispatch(receiveProducts(products))) 
) 

export const requestProduct = id => dispatch => (
    productAPIUtils.fetchProduct(id)
        .then( product => dispatch(receiveProduct(product)))
)