Making an improved clone of https://www.prodigitalphotos.com

Read Photo and Card controller as PhotoProducts and CardProducts
controller.  Same goes for Model as well. Both of these should be
renamed

### Learnings from this app

- first app that has some css
- first realworld app
- first time used a css framework
- some asset pipeline ideas
- wrote application on vim(smirks)
- was fun to customize devise

### Installation

1. This application uses ruby '3.2.2'. Install it via rbenv or rvm.
Alternatively, you can follow this tutorial from (theodinproject)
[https://www.theodinproject.com/lessons/ruby-installing-ruby]. This
tutorial might get updated in future, make sure you are installing
ruby '3.2.2'.

2. Install bundler gem.

3. Run `bundle install`

4. Run `rails db:seed`. You can now login as admin by filling email as
`johndoe@example.com` and password as `password`.

5. Start the server by typing `rails s` in terminal.

6. Go to `https://www.localhost:3000` on your local machine to access
 the app.

### Overview

Admins can create photo and card products. They can do it via WYSIWYG
editor. Visitors can only see the photo and card products.
