# frozen_string_literal: true

require 'YouCanBookMe/connection'

module YouCanBookMe
  class Client
    module Profiles
      module Bookings
        include YouCanBookMe::Connection::API

        def index(profile_id, params = {})
          get("/profiles/#{profile_id}/bookings", params)
        end

        def create(profile_id, params = {})
          post("/profiles/#{profile_id}/bookings", params)
        end

        def show(profile_id, booking_id, params = {})
          get("/profiles/#{profile_id}/bookings/#{booking_id}", params)
        end

        def update(profile_id, booking_id, params = {})
          patch("/profiles/#{profile_id}/bookings/#{booking_id}", params)
        end

        def destroy(profile_id, booking_id, params = {})
          delete("/profiles/#{profile_id}/bookings/#{booking_id}", params)
        end
      end
    end
  end
end
