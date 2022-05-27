import React from 'react'
import { IoIosStar } from 'react-icons/io'

class DisplayRating extends React.Component {
    constructor(props) {
        super(props)
        }
    
    render() {
    
        console.log('rating',this.props.rating)
        return(
            <div className='rating'>
                {[...Array(5)].map(( star,idx ) => {
                    const ratingValue = idx + 1
                    return (
                        <label key={idx}>
                        <input 
                            type="radio" 
                            name='radio' 
                            onClick={()=>this.changeRating(ratingValue)}
                            value={ratingValue}
                            />
                        <IoIosStar 
                            className={this.props.displayType}
                            color={ratingValue <= this.props.rating ? "rgb(250,156,27)" : "lightgray"}     
                            />
                    </label>
                    )
                })}
                <div>
                     <h3 id='review-header'>{this.props.header}</h3>
                </div>
            </div>
        )
    }
}

export default DisplayRating


