# frozen_string_literal: true

require 'YouCanBookMe/connection'

module YouCanBookMe
  class Client
    module Caligraph
      include YouCanBookMe::Connection::Caligraph

      def api_key
        params = {
          fields: 'apiKey'
        }
        get("/", params).parse['apiKey']
      end

      def set_api_key
        YouCanBookMe.instance_variable_set(:@password, api_key)
      end
    end
  end
end