import React from 'react'
import SignUpContainer from './session/signup_container'
import { Route } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../utils/route_utils'
import { Switch } from 'react-router-dom'


export default () => (
    //i need to add the other routes into this file
    //adding to cart is a protected route
    <div>   
        React is working
        <Switch>
            {/* <ProtectedRoute path="/somepath  component= */}
            {/* <AuthRoute exact path=''  /> */}
            <AuthRoute exact path='/signup' component={SignUpContainer} />
        </Switch>
    </div>
)