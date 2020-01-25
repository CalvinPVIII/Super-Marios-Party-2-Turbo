# _Super Mario's Specialty Food Turbo_

#### _Database Experimenting, 1/24/2020_

#### By _**Calvin Will**_

## Description

_Mario's Specialty Food is a basic web application that allows for a user to create, read, update and delete products. They can also create, read, update, and delete reviews for any products that exist within the database._

## Specs
| Behavior  | Input  | Output  |
|---|---|---|
| A product can be created in the database and displayed on the page  | Chaffles  | Recent Products: Chaffles |
| A person can review  a product  | I thought the product was good... 4 stars... Rob  | 4 Stars by Rob... I thought the product was good  |
| The name of a project can be updated  | Pizza Chaffle  | Recent Products:  Pizza Chaffle  |
| A person can update their review  | I thought the product was pretty good... 4 stars... Bob  | 4 Stars by Bob... I thought the product was pretty good  |
| A person can create an account | Email: user@gmail.com Password: 123 Password Confirmation 123 | Account successfully created |

## Setup/Installation Requirements
**PSQL and Rails is required for the database**
* _Clone from Github_
* _Using terminal navigate to the project folder_
* _Run the command "bundle install"_
* _Run the command "rake db:create"_
* _Run the command "rake db:migrate_
* _Run the command "rails s"_
* _In a web browser, navigate to "localhost:3000"_


## Known Bugs

_When files that related to the backend are altered in anyway (such as simply adding one extra line and saving), the front end will throw nil nil class errors until a new product or review is created._

## Support and contact details

_For questions, comments, or concerns, you can reach me at calvinp003@gmail.com_

## Technologies Used
* _Ruby_
* _Postgresql 12_
* _Rails_

### License

*Licensed under MIT*

Copyright (c) 2020 **_Calvin Will_**
