import React from 'react'
import Rating from './star'



class ReviewForm extends React.Component {
    constructor(props) {
        super(props)
    }
    //need user name to display at the top
    //need to pass in image as props from product show page
    //need to pass in title as props from product show page
    //
    render() {
        return (
            <div className='review-page'>
                <div className='review-container'>
                    <h1>Create Review</h1>
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
                        <button className='submit-form'>Submit</button>    
                    </form>
                </div>
            </div>
        )
    }
}

export default ReviewForm