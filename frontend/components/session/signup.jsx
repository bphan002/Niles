import React from 'react'
import { Link } from 'react-router-dom'


//now we can pass in this.props.createNewUser(pass in a json object to create a new user)
class Signup extends React.Component {
    constructor(props) {
        super(props)
        //creating localState
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
                //put in push where you want to go to
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
                    {this.renderErrors()}
                    {
                        
                    //put a component will unmount to remove errors

                    /*
                    go back to this later if i have time 
                    <label htmlFor='password2'>Re-enter password</label>
                    <input
                        name='password2'
                        id='password2'
                        type='password'
                        
                    /> */}

                    <input
                        className='btn' 
                        type='submit' 
                        value='Continue'
                        onClick={this.handleSubmit} 
                    />

                    <div className='border-shadow'>
                        <p>By creating an account, you agree to Nile's <Link to='/' className='text-link'><span>Conditions of Use</span></Link> and <Link to='/' className='text-link'><span>Privacy Notice.</span></Link></p>
                    </div>
                    <p >Already have an account?<span><Link to='/login' className='text-link'> Sign-In</Link></span></p>
                    <p className='business' >Buying for work?<Link to='/signup' className='text-link'><span>Create a free business account</span></Link></p>
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




