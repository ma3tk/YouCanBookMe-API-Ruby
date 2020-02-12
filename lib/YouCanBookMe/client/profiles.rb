# frozen_string_literal: true

require 'YouCanBookMe/connection/api'

module YouCanBookMe
  class Client
    module Profiles
      include YouCanBookMe::Connection::API

      def all_profiles(params = {})
        get('/profiles', params)
      end

      def create_profile(params = {})
        post('/profiles', params)
      end

      def profile(profile_id, params = {})
        get("/profiles/#{profile_id}", params)
      end

      def update_profile(profile_id, params = {})
        patch("/profiles/#{profile_id}", params)
      end

      def destroy_profile(profile_id, params = {})
        delete("/profiles/#{profile_id}", params)
      end
    end
  end
end
