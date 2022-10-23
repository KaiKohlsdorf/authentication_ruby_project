# Specialty Tea Store

#### Ruby/Rails Specialty Tea Store Site 

#### By [Kai Kohlsdorf](http://github.com/KaiKohlsdorf)

## Description

This site allows a user to browse products and add reviews. CRUD functionality exists for admins for products and reviews. The homepage sorts products by most reviewed, most recently added, and products made in the USA.

## Setup/Installation Requirements

* In the command line, clone this repository with $ git clone https://github.com/KaiKohlsdorf/specialty-products
* Navigate into the directory and in the command line install dependent gems by using command $ bundle install (if you don't already have the bundler gem installed, first run $ gem install bundler)
* To create the necessary database, use the following commands in the command line while in the root directory:
  * $ rake db:create
  * $ rake db:migrate
  * $ rake db:test:prepare
* To launch the application, while in the root directory use command $ rails s
* In any browser (preferably Chrome), navigate to http://localhost:3000/
* To run the test suite, use command $ rspec

## Known Bugs

* There is no admin login. Currently, all site visitors have access to adding, updating, and deleting products.

## Technologies Used

Ruby, Rails, HTML, CSS, Bootstrap, Git

### License

[MIT](https://github.com/KaiKohlsdorf/specialty_products/blob/main/LICENSE)

Copyright (c) 2022 **Kai Kohlsdorf**

## Contact Information

Contact the author at kai.w.kohlsdorf@gmail.com 