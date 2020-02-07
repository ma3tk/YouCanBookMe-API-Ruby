# frozen_string_literal: true

require 'YouCanBookMe/connection'

module YouCanBookMe
  class Client
    module Account
      include YouCanBookMe::Connection::API

      def show(params = {})
        get('', params)
      end

      def update(params = {})
        patch('', params)
      end

      def destroy(params = {})
        delete('', params)
      end
    end
  end
end
