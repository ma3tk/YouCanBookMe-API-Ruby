# frozen_string_literal: true

require 'YouCanBookMe/connection'

module YouCanBookMe
  class Client
    module Bookings
      include YouCanBookMe::Connection::API

      def index(params = {})
        get('/bookings', params)
      end
    end
  end
end
