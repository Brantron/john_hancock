# JohnHancock
[![Build Status](https://travis-ci.org/Brantron/johnhancock.svg)](https://travis-ci.org/Brantron/johnhancock)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'john_hancock'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install john_hancock

## Usage

With the gem installed, simply include it in the relevant JS manifest

```javascript
//= require john_hancock
```

Then you are free to use it in the view

```erb
<%= form_for @user do |f| %>
  <%= f.signature_field :signature %>
  <%= f.submit %>
<% end %>
```

Once this is saved, you can output the string as an image.

```erb
<%= image_tag @user.signature %>
```

The signature_field method generates a canvas as well as a hidden field. If you would like more flexibility in the placement of these elements you can use them separately.

```erb
<%= form_for @user do |f| %>
  <%= f.signature_canvas %>
  <p>some text about the form</p>
  <%= f.hidden_signature_field :signature %>
  <%= f.submit %>
<% end %>

```

## Example
![Example](example/John_Hancock.gif)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Brantron/john_hancock.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
