import React from 'react'
import { BsFillCheckCircleFill } from "react-icons/bs";

function OrderPlaced() {
    return (
        <div className='orderplaced-container'>
            <h1><BsFillCheckCircleFill size={30}/><span className='thanks'>Order placed, thanks!</span></h1>
            <p>Confirmation will be sent to your email.</p>
        </div>
    )
}


export default OrderPlaced