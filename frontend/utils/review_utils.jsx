export const createReview = review => {
    console.log('create review util', review)
    return $.ajax({
        method: 'POST',
        url: 'api/reviews',
        data: {review}
    })
}

export const updateReview = review => (
    $.ajax({
        method: 'PATCH',
        url: `/api/reviews/${review.id}`,
        data: {review}
    })
)

export const deleteReview = id => (
    $.ajax({
        method: 'DELETE',
        url: `/api/reviews/${id}`
    })
)


export const getReviews = productId => (
    $.ajax({
        method: 'GET',
        url: `/api/${productId}`
    })
)





