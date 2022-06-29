import React from 'react'
import Rating from './star'


class ReviewForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            product_id: this.props.review.product_id,
            rating: this.props.review.rating,
            comment: this.props.review.comment,
            header: this.props.review.header,
            id: this.props.review.id,
            error_rating: "Rating is required",
            error_comment: "Review is required",
            error_header: "Header is required",
            show_errors: false,
        }
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleRating = this.handleRating.bind(this)
    }
    
    componentDidMount(){
        if (this.props.formType === "Edit Form") {
            this.setState({error_comment : false, error_header: false})
        }
    }


    handleSubmit(e) {
        e.preventDefault()
        const has_errors = (
            this.state.error_comment ||
            this.state.error_header ||
            this.state.error_rating 
        )

        if (has_errors) {
            this.setState({show_errors:true})
            return
        }
        this.props.action(this.state).then(this.props.history.push(`/products/${this.state.product_id}`))
    }

    handleRating(rating) {
        if (rating <= 0) {
            this.setState({error_rating: "Star rating is required"})
        } else {
            this.setState({ error_rating: false})
            this.setState({ rating: rating })
        }
        return this.setState({rating: rating})
    }

    handleChange(field) {
        return e => {
            let value = e.currentTarget.value
            if (field === 'comment') {
                if (value.length <= 0) {
                    this.setState({error_comment: "Comment cannot be blank"})
                } else {
                    this.setState({error_comment: false})
                }
            }
            if (field === 'header') {
                if (value.length <= 0) {
                    this.setState({error_header: "Header cannot be blank"})
                } else {
                    this.setState({error_header: false})
                }
            }
            this.setState({[field]: value })
        }
    }

    render() {
        return (

            <>
                <p className='username'> <img src={window.avatar_image} alt=""/><span>{this.props.fullName}</span></p>
                        <h1>{this.props.userId}</h1>
                <div className='review-page'>
                    <div className='review-container'>
                        <div className='review-error'>
                            {this.state.show_errors && this.state.error_rating && <p>{this.state.error_rating}</p>}
                            {this.state.show_errors && this.state.error_comment && <p>{this.state.error_comment}</p>}
                            {this.state.show_errors && this.state.error_header && <p>{this.state.error_header}</p>}
                        </div>
                        <h1>{this.props.formType}</h1>
                        <h2 className='product-title'>{this.props.product.title}</h2>
                        {/* <img src="" alt="" /> */}
                        <h2>Overall Rating</h2>
                        <Rating updateStars={this.handleRating} />
                        <form className='review-form'>
                            <label htmlFor="header"><h2>Add a headline</h2></label>{"\n"}
                            <input 
                                id="header"  
                                type="text" 
                                placeholder="What's most important to know?"
                                value={this.state.header}
                                onChange={this.handleChange('header')}
                                />
                            <br/>
                            <label htmlFor="written-review"><h2>Add a written review</h2></label>
                            <textarea 
                                placeholder="What did you like or dislike? What did you use this product for?" 
                                id="written-review"
                                value={this.state.comment} 
                                onChange={this.handleChange('comment')}
                                />
                            <input type="submit" className='submit-form' value='Submit' onClick={this.handleSubmit}/>
                        </form>
                    </div>
                </div>
             </>
        )
    }
}

export default ReviewForm