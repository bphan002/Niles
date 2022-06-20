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
import LeaveReviewFormContainer from './reviews/leave_review_form_container'
import EditReviewFormContainer from './reviews/edit_review_form_container'
import TotalCartContainer from './cartItems/total_cart_container'
import OrderPlaced from './cartItems/order_placed'

export default (props) => 
console.log(props)
(
    <div className='page-container'>   

        <NavBarContainer />
 
        <Switch>
            <AuthRoute exact path='/login' component={LogInContainer}  />
            <AuthRoute exact path='/signup' component={SignUpContainer} />
            <Route exact path='/checkout' component={TotalCartContainer} />
             <Route exact path='/products/:productId/reviews/new' component={LeaveReviewFormContainer} />
            <Route exact path="/reviews/:reviewId/edit" component={EditReviewFormContainer} />
            <Route exact path='/products' component={ProductIndexContainer} />
            <Route exact path='/products/category/' component={ProductCategoryIndexContainer} />
            <Route exact path='/products/checkout/' component={OrderPlaced} />
            <Route exact path='/products/:productId' component={ProductShowContainer} />
            <Route exact path='/products/category/:category' component={ProductCategoryIndexContainer} /> 
            <Route exact path='/' component={Home} />
            <Route path="*" component={NotFoundPage} />
        </Switch>
    </div>
)


