import React from 'react'
import { FaLinkedin, FaGithubSquare } from "react-icons/fa";
import { GiHighKick } from "react-icons/gi";
import { Link } from 'react-router-dom'
import { ExternalLink } from 'react-external-link'

const Footer = () => {
    return (
        <footer>
            <ul className='footer-container'>
                <li><ExternalLink href='https://www.linkedin.com/in/billy-phan-41014a40/'><FaLinkedin color='white'size={50} /></ExternalLink></li>
                <li><ExternalLink href='https://github.com/bphan002'><FaGithubSquare color='white' size={50} /></ExternalLink></li>
                <li><ExternalLink href='placeholder'><GiHighKick color='white' size={50} /></ExternalLink></li>
            </ul>
        </footer>
    )
}

export default Footer

