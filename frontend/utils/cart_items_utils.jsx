export const fetchCartItems = data => (
    $.ajax({
        method: 'GET',
        url: 'api/cart_items',
        data
    })
)



export const addCartItems = cartItems => (
    $.ajax({
        method: 'POST',
        url: '/api/cart_items',
        cartItems
    })
)  

