# frozen_string_literal: true

require 'YouCanBookMe/connection/api'

module YouCanBookMe
  class Client
    module Bookings
      include YouCanBookMe::Connection::API

      def all_bookings(params = {})
        get('/bookings', params)
      end
    end
  end
end
