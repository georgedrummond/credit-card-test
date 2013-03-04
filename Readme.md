# Credit Card Validator

Please find attached my solution to your credit card validation problem.

While working on this problem I adopted a classical TDD work flow, and this is my preferred method of development.

## Instructions

To run the Credit Card Validator, please first run ```bundle install``` to install the required dependencies.

To check the validity of a credit card please run ```bin/card 4111111111111111```

To use the class directly do the following:

```ruby
card = CreditCard.new '4111111111111111'

card.issuer?
# => 'Visa'

card.valid?
# => true

card.number
# => 4111111111111111
```

## Running the tests

There tests are written in RSpec and Cucumber for this problem. They run with the ```rspec``` and ```cucumber``` commands respectivly. 

The RSpec tests are written as class unit tests. When I use RSpec, I generally follow the guidelines set out at http://betterspecs.org however I am very adaptable and can quickly learn and apply your chosen methodology.

The Cucumber tests check the functionality of the command line interface. 

## Unknown card issuers

I have left the class to allow a card to be reported as valid even if we are given 'Unknown' as the credit card issuer. We could add in an extra conditions so that cards of an 'Unknown' issuer are reported as invalid however this would require clarification and a specification from the product owner.