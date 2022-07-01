import React from 'react'
import { FaLinkedin, FaGithubSquare } from "react-icons/fa";
import { GiHighKick } from "react-icons/gi";
import { Link } from 'react-router-dom'

const Footer = () => {
    return (
        <footer className='footer'>
            <ul className='footer-container'>
                <li><Link to='/'><img className='whiteLogo' src={window.white_logo} alt="" /></Link></li>
                <li><a href="https://www.linkedin.com/in/billy-phan-41014a40/" target="_blank"><FaLinkedin color='white'size={50} /></a></li>
                <li><a href='https://github.com/bphan002' target="_blank"><FaGithubSquare color='white' size={50} /></a></li>
                <li><a href='https://bphan002-porftolio-website.herokuapp.com/' target="_blank"><GiHighKick color='white' size={50} /></a></li>
            </ul>
            <div className='trademark'>
                <p>©June 2022, Niles is an Amazon Clone created by Billy Phan</p>
            </div>
        </footer>
    )
}

export default Footer

