export const fetchProducts = data => (
    $.ajax({
        method: 'GET',
        url: '/api/products',
        data
    })
)

export const fetchProduct = id => (
    $.ajax({
        url: `/api/products/${id}`
    })
)