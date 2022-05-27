export const createReview = review => {
    return $.ajax({
        method: 'POST',
        url: 'api/reviews',
        data: {review}
    })
}

export const requestReport = reportId => dispatch => (
    ReportAPIUtil.fetchReport(reportId)
        .then(report => dispatch(receiveReport(report)))
)

export const updateReview = review => (
    $.ajax({
        method: 'PATCH',
        url: `/api/reviews/${review.id}`,
        data: {review}
    })
)

export const getReview = reviewId => (
    $.ajax({
        method: 'GET',
        url: `/api/reviews/${reviewId}`
    })
)






export const deleteReview = id => (
    $.ajax({
        method: 'DELETE',
        url: `/api/reviews/${id}`
    })
)







