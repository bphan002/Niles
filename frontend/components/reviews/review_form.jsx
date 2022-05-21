import React from 'react'
import Rating from './star'

class ReviewForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            user_id: '',
            product_id: '',
            rating: '',
            comment: '',
            header: '',
        }

        this.handleSubmit = this.handleSubmit.bind(this)
    }
    //need user name to display at the top
    //need to pass in image as props from product show page
    //need to pass in title as props from product show page
    //

    handleSubmit(e) {
        e.preventDefault()
        this.props.action(this.state)
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
                        <Rating />
                        <form className='review-form' onSubmit={this.handleSubmit}>
                            <label htmlFor="headline"><h2>Add a headline</h2></label>{"\n"}
                            <input id="headline" name="headline" type="text" placeholder="What's most important to know?"/>
                            <br/>
                            <label htmlFor="written-review"><h2>Add a written review</h2></label>
                            <textarea 
                                placeholder="What did you like or dislike? What did you use this product for?"
                                name="written-review" 
                                id="written-review" 
                                />
                            <input type="submit" classname='submit-form' value='Submit'/>
                        </form>
                    </div>
                </div>
             </>
        )
    }
}

export default ReviewForm