import React from 'react'

//now we can pass in this.props.createNewUser(pass in a json object to create a new user)
class Signup extends React.Component {
    constructor(props) {
        super(props)
        //creating localState
        this.state = {
            username: '',
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

    render() {
        return (
            <div className='session-form'>
                <form onSubmit={this.handleSubmit}>Create Account</form>
                <label htmlFor='name'>Your name</label>
                <input 
                    name='name' 
                    id='name' 
                    type='text'
                    onChange={this.handleChange('username')} 
                />

                <label htmlFor='email'>Mobile number or email</label>
                <input 
                    name='email' 
                    id='email' 
                    type='text' 
                    onChange={this.handleChange('email')} 
                />

                <label htmlFor='password'>Password</label>
                <input
                    name='password'
                    id='password' 
                    type='password'
                    onChange={this.handleChange('password')}
                />

                <p><span>i</span>Passwords must be at least 6 characters</p>

                
                {

                /*
                go back to this later if i have time 
                <label htmlFor='password2'>Re-enter password</label>
                <input
                    name='password2'
                    id='password2'
                    type='password'
                    
                /> */}

                <input 
                    type='submit' 
                    value='Continue'
                    onClick={this.handleSubmit} 
                />

                <p>By creating an account, you agree to Nile's <span>Conditions of Use</span> and <span>Privacy Notice.</span></p>

                <p>Already have an account?<span>Sign-In</span></p>
                <p>Buying for work?<span>Create a free business account</span></p>
                <footer>
                    <ul>
                        <li>Conditions of Use</li>
                        <li>Privacy Notice</li>
                        <li>Help</li>
                    </ul>
                    <footer>2020, Niles.com,Inc. or its affiliates</footer>
                </footer>
            </div>
        )
    }
}

export default Signup