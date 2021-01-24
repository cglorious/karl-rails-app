#Reviewer App

##User Stories
- As Albus, I want an app to help me find a local restaurant so that I can eat a good meal.

### Signup, Login, Logout, Omniauth
[x] As Hermione, I want to sign up so I can create my account.
[x] As Hermione, I want to login so I can use my account.
[x] As Hermione, I want to logout so I can I can protect my information.
[ ] As Ron, I want to use my Facebook credentials so I can sign in to the app easily.
[ ] As Ron, I want to have access to a navigation bar so I can view my profile,

### My Profile,
[x] As Ron, I want to have access to view my reviews from my profile so I can remember restaurants I've visited.
[x] As Ron, I want to view a page of local businesses so I can choose a restaurant to order my meal.

### Business, Reviews
[ ] As Harry, I want to view a restaurant's page so I can read reviews.
[ ] As Harry, I want to add a review for a restaurant so I can rate the restaurant for other customers.

##Models

###Business
- belongs_to :customer
- belongs_to :category
- has_many :reviews
- has_many :customers, through: :reviews
- name, phone_number, city, state, price_range, rating
- helper methods: location, average_rating
- Stretch: image, website, street_address, zip_code, dining_options (delivery, takeout, dine-in)
* adjust city, state to zip_code; change price_range to integer; phone_number as string; add default value to rating

###Customer
- has_many :businesses
- has_many :reviews
- has_many :businesses, through: :reviews
- has_many :categories, through: :reviews
- email, password_digest, city, state
- helper methods: location
- Stretch: admin functionality, image
* adjust city, state to zip_code

###Review * join table joining users and businesses
- belongs_to :customer
- belongs_to :business
- content, rating, review_date
- Stretch: image

###Category
- has_many :businesses
- has_many :customers, through: :businesses
- name
