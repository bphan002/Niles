import React from 'react'
import Rating from './star'

class ReviewForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            user_id: this.props.reviews.user_id,
            product_id: this.props.reviews.product_id,
            rating: '',
            comment: '',
            header: '',
        }

        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleRating = this.handleRating.bind(this)
    }
    //need user name to display at the top
    //need to pass in image as props from product show page
    //need to pass in title as props from product show page
    //

    handleSubmit(e) {
        e.preventDefault()
        this.props.action(this.state).then(this.props.history.push(`/products/${this.state.product_id}`))
    }

    handleRating(rating) {
        this.setState({...this.state,rating})
    }

    handleChange(field) {
        return e => {
            this.setState({...this.state,[field]: e.currentTarget.value})
            console.log(this.state)
        }
    }



    render() {
        console.log(this.props)
        return (
            <>
                {/* <p className='username'><span><img src={window.avatar_image} alt=""/></span>   {this.props.fullName}</p> */}
                <div className='review-page'>
                    <div className='review-container'>
                        <h1>{this.props.formType}</h1>
                        <img src="" alt="" />
                        <h2>Overall Rating</h2>
                        <Rating updateStars={this.handleRating} />
                        <form className='review-form' onSubmit={this.handleSubmit}>
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
                            <input type="submit" className='submit-form' value='Submit'/>
                        </form>
                    </div>
                </div>
             </>
        )
    }
}

export default ReviewForm