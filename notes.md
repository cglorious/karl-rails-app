#Reviewer App

##Models

###Business
- belongs_to :customer
- belongs_to :category
- has_many :reviews
- has_many :clients, through: :reviews
- name, phone_number, city, state, price_range, rating
- helper methods: location, average_rating
- Stretch: image, website, street_address, zip_code, dining_options (delivery, takeout, dine-in)

###Customer
- has_many :businesses
- has_many :reviews
- has_many :businesses, through: :reviews
- has_many :categories, through: :reviews
- email, password_digest, city, state
- helper methods: location
- Stretch: admin functionality, image

###Review * join table joining users and businesses
- belongs_to :customer
- belongs_to :business
- content, rating, date
- Stretch: image

###Category
- has_many :businesses
- has_many :customers, through: :businesses
- name
