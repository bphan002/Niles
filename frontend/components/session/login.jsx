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

  renderErrors() {
    return(
      <ul>
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
      <div>
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <br/>
          <div className="login-form-container">
            <h1>Sign-In</h1>
            {this.renderErrors()}
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
              <p>By continuing, you agree to Nile's Conditions of Use and Privacy Notice.</p>
              
              <p> Need help?</p>
            </div>

            <p>New to Amazon?</p>

            <button onClick={()=>history.push('/signup')}>Create your Amazon account</button>
          </div>
        </form>
      </div>
    );
  }
}

export default Login;
