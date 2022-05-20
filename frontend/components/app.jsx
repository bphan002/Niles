import React from 'react'
import SignUpContainer from './session/signup_container'
import { Redirect, Route } from 'react-router-dom'
import { AuthRoute, ProtectedRoute } from '../utils/route_utils'
import { Switch } from 'react-router-dom'
import NavBarContainer from './navbar/nav_bar_container'
import LogInContainer from './session/login_container'
import NotFoundPage from './not_found/not_found'
import ProductIndexContainer from './products/product_index_container'
import ProductShowContainer from './products/product_show_container'
import ProductCategoryIndexContainer from './products/product_category_index_container'
import Home from './home/home'

export default () => (


    //i need to add the other routes into this file
    //adding to cart is a protected route
    <div>   
        <NavBarContainer />
        <Switch>
            {/* <ProtectedRoute path='/signup'  component={SignUpContainer} /> */}
            <AuthRoute exact path='/login' component={LogInContainer}  />
            <AuthRoute exact path='/signup' component={SignUpContainer} />
            <Route exact path='/products' component={ProductIndexContainer} />
            <Route exact path='/products/category/' component={ProductCategoryIndexContainer} />
            <Route exact path='/products/:productId' component={ProductShowContainer} />
            <Route exact path='/products/category/:category' component={ProductCategoryIndexContainer} /> 
            {/* had to do bottom path because it thinks 'products/category/ for all thinks its a productID */}
            <Route exact path='/' component={Home} />
            <Route path="*" component={NotFoundPage} />
        </Switch>
    </div>
)


//makes a category routes

