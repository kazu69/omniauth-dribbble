require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Dribbble < OmniAuth::Strategies::OAuth2
      option :name, 'dribbble'

      option :client_options, {
        site: 'https://api.dribbble.com',
        authorize_url: 'https://dribbble.com/oauth/authorize',
        token_url: 'https://dribbble.com/oauth/token'
      }

      uid { raw_info['id'].to_s }

      info do
        {
          name: raw_info['name'],
          nickname: raw_info['username'],
          location: raw_info['location'],
          description: raw_info['bio'],
          image: raw_info['avatar_url'],
          urls: {
            website: raw_info['links']['web'],
            twitter: raw_info['links']['twitter'],
            dribbble: raw_info['html_url']
          },
        }
      end

      extra do
        skip_info? ? {} : { :raw_info => raw_info }
      end

      def raw_info
        @raw_info = @raw_info || access_token.get('v1/user').parsed
      end

    end
  end
end

OmniAuth.config.add_camelization 'dribbble', 'Dribbble'
