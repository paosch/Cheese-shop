# Ned Ned's Cheese Emporium

A Sinatra app for an online artisan cheese shop called Ned Ned's Cheese Emporium. The customers are UK-based and pay £19.99 per order.

The business buys cheese from France in euros, and in order to make a profit it must charge at least €3.24 per block of cheese sold.

The program makes a call to an external API to get the GBP/EUR exchange rate in real time, and Ned Ned's Cheese Emporium's website shows a message telling the customer how many blocks of cheese they can get for their £19.99.

### User stories
```
As a cheese shop owner,
to convert the pounds sterling I receive into euros,
I want to be able to get the GBP/EUR exchange rate in real time.

As a cheese shop owner,
so that the transaction is correct,
I want to be able to calculate how much cheese the customer should get.

As a customer of the cheese shop,
to know how many blocks of cheese I can get for my money today,
I want to see a message on the shop's website.
```

### To run the code and tests
- clone this repository
- run ```bundle install```
- run ```rackup``` or ```ruby app.rb``` to start the server
- visit the localhost page

- Run the tests with ```rspec```

### Ruby version and gems used
- Ruby 2.4.1
- Gems: Httparty to connect to the exchange rates API, Rspec and Capybara for testing, Simplecov for test coverage, WebMock to mock the HTTP request


### Test coverage
![screen shot 2018-07-01 at 17 17 34](https://user-images.githubusercontent.com/33669463/42136433-122cd608-7d53-11e8-8532-9e807726d892.png)

### Website screenshot
The application is hosted on Heroku: https://nedscheeseemporium.herokuapp.com/
![screen shot 2018-07-01 at 17 19 24](https://user-images.githubusercontent.com/33669463/42136434-17bbe438-7d53-11e8-8463-35792c439e43.png)

### IRB snippet
![screen shot 2018-07-01 at 17 36 50](https://user-images.githubusercontent.com/33669463/42136548-8f93e2ba-7d55-11e8-8520-4bf11e48ea8b.png)
