# frozen_string_literal: true

require 'http'
require 'YouCanBookMe/Client/Error'
require 'YouCanBookMe'

module YouCanBookMe
  module Connection
    module API
      BASE_URL = 'https://api.youcanbook.me/v1/'.freeze

      protected

      def get(path, data)
        email = YouCanBookMe.instance_variable_get(:@email)
        password = YouCanBookMe.instance_variable_get(:@password)
        response = HTTP.basic_auth(user: email, pass: password).get(Addressable::URI.parse(BASE_URL + email + path.to_s).normalize.to_s, params: data)
        YouCanBookMe::Error.raise_from(response)
        response.parse
      end

      def post(path, data)
        email = YouCanBookMe.instance_variable_get(:@email)
        password = YouCanBookMe.instance_variable_get(:@password)
        response = HTTP.basic_auth(user: email, pass: password).post(Addressable::URI.parse(BASE_URL + email + path.to_s).normalize.to_s, json: data)
        YouCanBookMe::Error.raise_from(response)
        response.parse
      end

      def put(path, data)
        email = YouCanBookMe.instance_variable_get(:@email)
        password = YouCanBookMe.instance_variable_get(:@password)
        response = HTTP.basic_auth(user: email, pass: password).put(Addressable::URI.parse(BASE_URL + email + path.to_s).normalize.to_s, json: data)
        YouCanBookMe::Error.raise_from(response)
        response.parse
      end

      def delete(path, data)
        email = YouCanBookMe.instance_variable_get(:@email)
        password = YouCanBookMe.instance_variable_get(:@password)
        response = HTTP.basic_auth(user: email, pass: password).delete(Addressable::URI.parse(BASE_URL + email + path.to_s).normalize.to_s, json: data)
        YouCanBookMe::Error.raise_from(response)
        response.parse
      end
    end
  end
end
