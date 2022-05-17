import React from 'react'
import SignUpContainer from './session/signup_container'
import { Route } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../utils/route_utils'
import { Switch } from 'react-router-dom'
import NavBarContainer from './navbar/nav_bar_container'
import LogInContainer from './session/login_container'


export default () => (
    //i need to add the other routes into this file
    //adding to cart is a protected route
    <div>   
        <Switch>
            {/* <ProtectedRoute path='/signup'  component={SignUpContainer} /> */}
            <AuthRoute exact path='/login' component={LogInContainer}  />
            <AuthRoute exact path='/signup' component={SignUpContainer} />
            <NavBarContainer />
        </Switch>
    </div>
)