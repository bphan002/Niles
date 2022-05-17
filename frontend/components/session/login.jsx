import React from 'react';
import { Link } from 'react-router-dom'
class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this)
  }

  componentDidMount() {
    this.props.clearErrors()
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  handleDemo(e) {
    e.preventDefault();
    const user = {
      email: 'demouser@gmail.com',
      password: '123456'
    }
    this.props.processForm(user);
  }

  renderErrors() {
    return(
      <ul className='errors'>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      
      <div className='log-in'>
        <Link to="/"><img className='logo'src={window.black_logo} alt="" /></Link>
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <br/>
          <div className="login-form-container">
            {this.renderErrors()}
            <h1>Sign-In</h1>
            <div className="login-form">
              <br/>
              <label>Email or mobile phone number:
                <input type="text"
                  value={this.state.email}
                  onChange={this.update('email')}
                  className="login-input"
                />
              </label>
              <br/>
              <label>Password:
                <input type="password"
                  value={this.state.password}
                  onChange={this.update('password')}
                  className="login-input"
                />
              </label>
              <br/>
              <input className="session-submit" type="submit" value='Continue' />
              <button onClick={this.handleDemo}>Demo User</button>
              <p>By continuing, you agree to Nile's Conditions of Use and Privacy Notice.</p>
              
              <p> Need help?</p>
              <h2 className='line'><span>New to Amazon?</span></h2>
              <Link className='account-button' to='/signup'>Create your Amazon Account</Link>
            </div>
            

          </div>
        </form>
      </div>
    );
  }
}

export default Login;
