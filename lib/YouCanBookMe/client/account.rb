# frozen_string_literal: true

require 'YouCanBookMe/connection/api'

module YouCanBookMe
  class Client
    module Account
      include YouCanBookMe::Connection::API

      def account(params = {})
        get('', params)
      end

      def update_account(params = {})
        patch('', params)
      end

      def destroy_account(params = {})
        delete('', params)
      end
    end
  end
end
