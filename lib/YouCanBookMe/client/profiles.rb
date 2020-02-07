# frozen_string_literal: true

require 'YouCanBookMe/connection'

module YouCanBookMe
  class Client
    module Profiles
      include YouCanBookMe::Connection::API

      def profiles(params = {})
        get("/profiles", params)
      end
    end
  end
end