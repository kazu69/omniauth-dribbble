# Omniauth::Dribbble

This gem contains the Dribbble strategy for OmniAuth.

## Before Use

You'll need to sign up for an OAuth2 Application ID and Secret on the [Dribbble Developer](http://developer.dribbble.com/)

First you'll sign in into the [Dribbble](http://dribbble.com/) and [create an application](https://dribbble.com/account/applications/new). Make a written note of API Key and API Secret.

## How to Use

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-dribbble', :github => 'kazu69/omniauth-dribbble'
```

```ruby
use OmniAuth::Builder do
  provider :dribbble, 'DRIBBBLE_CLIENT_ID', 'DRIBBBLE_CLIENT_SECRET'
end
```

If use this gem on your rails app, config/initializers/omniauth.rb file should look like this:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :dribbble, 'DRIBBBLE_CLIENT_ID', 'DRIBBBLE_CLIENT_SECRET'
end
```

## Authentication Hash
```sh
{"provider"=>"dribbble",
 "uid"=>"12345",
 "info"=>
  {"name"=>"Dribbble",
   "nickname"=>"Dribbble",
   "location"=>"Salem, MA",
   "description"=>"Show and tell for designers. This is Dribbble on Dribbble.",
   "image"=>"https://d13yacurqjgara.cloudfront.net/assets/avatar-default.gif",
   "urls"=>{"website"=>"http://dribbble.com", "twitter"=>"https://twitter.com/dribbble", "dribbble"=>"https://dribbble.com/dribbble"}},
 "credentials"=>{"token"=>"alonglongstrings....", "expires"=>false},
 "extra"=>
  {"raw_info"=>
    {"id"=>39,
     "name"=>"Dribbble",
     "username"=>"Dribbble",
     "html_url"=>"https://dribbble.com/dribbble",
     "avatar_url"=>"https://d13yacurqjgara.cloudfront.net/assets/avatar-default.gif",
     "bio"=>"Show and tell for designers. This is Dribbble on Dribbble.",
     "location"=>"Salem, MA",
     "links"=>{"web"=>"http://dribbble.com", "twitter"=>"https://twitter.com/dribbble"},
     "buckets_count"=>169,
     "followers_count"=>5,
     "followings_count"=>118,
     "likes_count"=>390,
     "projects_count"=>2,
     "shots_count"=>120,
     "teams_count"=>2,
     "type"=>"Prospect",
     "pro"=>true,
     "buckets_url"=>"https://api.dribbble.com/v1/users/xx/buckets",
     "followers_url"=>"https://api.dribbble.com/v1/users/xx/followers",
     "following_url"=>"https://api.dribbble.com/v1/users/xx/following",
     "likes_url"=>"https://api.dribbble.com/v1/users/xx/likes",
     "projects_url"=>"https://api.dribbble.com/v1/users/xx/projects",
     "shots_url"=>"https://api.dribbble.com/v1/users/xx/shots",
     "teams_url"=>"https://api.dribbble.com/v1/users/xx/teams",
     "created_at"=>"2011-05-09T05:43:43Z",
     "updated_at"=>"2012-05-09T05:43:43Z"}}}
```

## Contributing

1. Fork it ( https://github.com/kazu69/omniauth-dribbble/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

License

Copyright (c) 2014 by kazu69

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
