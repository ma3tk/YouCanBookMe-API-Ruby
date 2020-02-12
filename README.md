# YouCanBookMe-API-Ruby
[YouCanBook.me](https://youcanbook.me/) unofficial API Wrapper Ruby Gem. 

## How to Install

In Gemfile, add below.

```ruby
gem 'youcanbookme-api-ruby'
```

and bundle it.

```shell
$ bundle install
```

## Usage

Before use this gem, Read [Official API Document](https://api.youcanbook.me/docs/index.html) first.

In API Document,
1. `The API key for your account (a long string of characters, starting 'ak_')`
    1. You can get your API key with [Caligraph API](https://caligraph.youcanbook.me/docs/index.html)
1. `The password that you have set on your account (e.g. via the YouCanBook.me dashboard)`
    1. [Login](https://app.youcanbook.me/#/login) -> [Set your password](https://app.youcanbook.me/#/account?show=password)
1. `A 'one time token' that you can have requested to be sent out via email (a long string of characters, starting 'ott_')`
    1. 
1. `A 'session token', which is something you can reset on your account using one of the above methods, that has a limited life span (a long string of characters, starting 'sk_')`
    1. [Login](https://app.youcanbook.me/#/login) -> open your developer tool in Chrome -> Application tab -> Storage -> Cookies -> `https://app.youcanbook.me` -> name: `auth`

After preparing your authentication info,

```ruby
require 'youcanbookme-api-ruby'

client = YouCanBookMe::Client.new(email: 'your@email.here', password: 'yourpasswordhere')

response = client.profile
```

