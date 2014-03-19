# FbParse

Ruby Gem to parse an ID from various Facebook URLs

Requires getting the URL from a specific place, not really acceptable for end user use but is functional enough to provide in a CMSas you can directly instruct end user.

## Installation

Add this line to your application's Gemfile:

    gem 'fb_parse'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fb_parse

## Usage

To return an ID, run FbParse.get_id(url), where url is taken from the address bar on the individual link page.

How to get a correctly formatted URL:

1. Find post on Facebook
2. Click on the date link on the post
3. Copy URL from your address bar

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request