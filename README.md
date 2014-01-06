# Twilio::Client

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'twilio-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twilio-client

## Configuration

  ```ruby
   TwilioClient.configure({
      sid: 'string',
      token: 'string',
      from:  '10 digit number'
   })
  ```

## Public Class Methods

   * TwilioClient.send_text(from, to, body)
   * TwilioClient.client (to access the twilio client directly)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
