# [Island Hunt](http://islandhunt.herokuapp.com/)
## Installation
#### Assuming you have ruby and rails installed, to run this app locally do the following:
##### This section you do only once
* Create a [cloudinary account](https://cloudinary.com/users/login) and add your API key to a .env file (which is already in gitignore)
* Run `yarn install --check-files`  
* Run `bundle install`  
* Run `rails db:create db:migrate`
* (OPTIONAL) run `rails db:seed` to add some default pre-made data

##### When developing the website, you need to only run the following step `rails s` to server the website locally.
