# snetwork twitter

Small app for twitter

## Installation
Install it from GitHub.com:

    $ git clone git@github.com:kisakov/snetwork_twitter.git
    $ bundle install
    $ rake db:setup
    $ foreman start

## Notes

Run at localhost:5000

## requests
*  get localhost:5000
*  get localhost:5000/tweets.json?name=dhh
*  get localhost:5000/tweets?name=dhh
*  post localhost:5000/add_account - params: "twitter_account[name]" = "dhh"

![Screenshot](https://raw.githubusercontent.com/kisakov/snetwork_twitter/master/1.png)
![Screenshot](https://raw.githubusercontent.com/kisakov/snetwork_twitter/master/2.png)

## Tests

Use `bundle exec rspec` to run tests