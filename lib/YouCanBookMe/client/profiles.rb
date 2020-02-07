# frozen_string_literal: true

require 'YouCanBookMe/connection'

module YouCanBookMe
  class Client
    module Profiles
      include YouCanBookMe::Connection::API

      def index(params = {})
        get('/profiles', params)
      end

      def create(params = {})
        post('/profiles', params)
      end

      def show(profile_id, params = {})
        get("/profiles/#{profile_id}", params)
      end

      def update(profile_id, params = {})
        patch("/profiles/#{profile_id}", params)
      end

      def destroy(profile_id, params = {})
        delete("/profiles/#{profile_id}", params)
      end
    end
  end
end
