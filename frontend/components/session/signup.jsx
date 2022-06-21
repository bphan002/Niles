import React from 'react'
import { Link } from 'react-router-dom'

class Signup extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            name: '',
            email: '',
            password: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleChange(field) {
        return (e) => {
            this.setState({ [field]: e.currentTarget.value})
        }
    }

    handleSubmit(e) {
        e.preventDefault()
        this.props.createNewUser(this.state)
            .then( ()=> this.props.history.push())
    }

    renderErrors() {
        return(
          <ul>
            {this.props.errors.map((error, i) => (
              <li className='errors' key={`error-${i}`}>
                {error}
              </li>
            ))}
          </ul>
        );
      }

    componentDidMount() {
        this.props.clearErrors()
    }

    render() {
        return (
             
            <div className='session-form'>
                <Link to='/' className='logo'><img src={window.black_logo}/></Link>
                <div className='container-form'>
                   {this.renderErrors()}
                    <form onSubmit={this.handleSubmit}>Create Account</form>
                    <label htmlFor='name'>Your name</label>
                    <br></br>
                    <input
                        placeholder='First and last name'
                        name='name' 
                        id='name' 
                        type='text'

                        onChange={this.handleChange('name')} 
                    />
                    <br></br>
                    <label htmlFor='email'>Mobile number or email</label>
                    <br></br>
                    <input 
                        name='email' 
                        id='email' 
                        type='text' 
                        onChange={this.handleChange('email')} 
                    />
                    <br></br>
                    <label htmlFor='password'>Password</label>
                    <br></br>
                    <input
                        placeholder='At least 6 characters'
                        name='password'
                        id='password' 
                        type='password'
                        onChange={this.handleChange('password')}
                    />

                    <p><span className="i">i</span>Passwords must be at least 6 characters</p>
                   
                    <input
                        className='btn' 
                        type='submit' 
                        value='Continue'
                        onClick={this.handleSubmit} 
                    />

                    <div className='border-shadow'>
                        <p>By creating an account, you agree to Nile's Conditions of Use and Privacy Notice.</p>
                    </div>
                    <p >Already have an account?<span><Link to='/login' className='text-link'> Sign-In</Link></span></p>
                </div>

                
                <footer>
                    <ul className='footer-nav'>
                        <Link className='text-link' to='/'><li>Conditions of Use</li></Link>
                        <Link className='text-link' to='/'><li>Privacy Notice</li></Link>
                        <Link className='text-link' to='/'><li>Help</li></Link>
                    </ul>
                </footer>
                <p className='copyright'>&copy; 2020, Niles.com, Inc. or its affiliates</p>
            </div>
        )
    }
}

export default Signup




