# frozen_string_literal: true

require 'YouCanBookMe/connection/api'

module YouCanBookMe
  class Client
    module Profiles
      module Bookings
        include YouCanBookMe::Connection::API

        def bookings(profile_id, params = {})
          get("/profiles/#{profile_id}/bookings", params)
        end

        def create_booking(profile_id, params = {})
          post("/profiles/#{profile_id}/bookings", params)
        end

        def booking(profile_id, booking_id, params = {})
          get("/profiles/#{profile_id}/bookings/#{booking_id}", params)
        end

        def update_booking(profile_id, booking_id, params = {})
          patch("/profiles/#{profile_id}/bookings/#{booking_id}", params)
        end

        def destroy_booking(profile_id, booking_id, params = {})
          delete("/profiles/#{profile_id}/bookings/#{booking_id}", params)
        end
      end
    end
  end
end
