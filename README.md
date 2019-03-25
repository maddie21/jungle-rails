# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

### Final Product 

!["Screenshot of Poducts Page"](https://github.com/maddie21/jungle-rails/blob/master/docs/ProductsPage.png?raw=true)
!["Screenshot of Categories Page "](https://github.com/maddie21/jungle-rails/blob/master/docs/Categories.png?raw=true)
!["Screenshot of Ratings and Comments Page"](https://github.com/maddie21/jungle-rails/blob/master/docs/Rating&Comments.png?raw=true)
!["Screenshot of Order Confirmation Page "](https://github.com/maddie21/jungle-rails/blob/master/docs/OrderConfirmation.png?raw=true)
!["Screenshot of Average Rating Page"](https://github.com/maddie21/jungle-rails/blob/master/docs/AverageRating.png?raw=true)
!["Screenshot of Login Page"](https://github.com/maddie21/jungle-rails/blob/master/docs/LoginPage.png?raw=true)
!["Screenshot when there are no ratings or reviews"](https://github.com/maddie21/jungle-rails/blob/master/docs/NoReviews.png?raw=true)

## Dependencies

* bcrypt (~> 3.1.7)
* bootstrap-sass (~> 3.3.6)
* byebug
* carrierwave
* dotenv-rails
* faker
* font-awesome-rails
* jbuilder (~> 2.0)
* jquery-rails
* money-rails
* newrelic_rpm
* PostgreSQL 9.x
* puma
* quiet_assets
* rails (= 4.2.6)
* rails_12factor
* rmagick
* sass-rails (~> 5.0)
* sdoc (~> 0.4.0)
* spring
* stripe
* turbolinks
* uglifier (>= 1.3.0)
* web-console (~> 2.0)
