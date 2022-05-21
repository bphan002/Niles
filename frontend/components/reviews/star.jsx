import React from 'react'
import { IoIosStar } from 'react-icons/io'

class Rating extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            rating: null,
            hover: null
        }
    }
    render() {
        return(
            <div className='rating'>
                {[...Array(5)].map(( star,idx ) => {
                    const ratingValue = idx + 1
                    return (
                    <label>
                        <input 
                            type="radio" 
                            name='radio' 
                            onClick={()=>this.setState({rating: ratingValue})}
                            value={ratingValue}
                            />
                        <IoIosStar 
                            className='star'
                            color={ratingValue <= (this.state.hover || this.state.rating) ? "rgb(250,156,27)" : "lightgray"}     
                            onMouseEnter={(() => this.setState({hover: ratingValue}))}
                            onMouseLeave={()=> this.setState({hover: null})}
                            />
                    </label>
                    )
                })}
            </div>
        )
    }
}

export default Rating


