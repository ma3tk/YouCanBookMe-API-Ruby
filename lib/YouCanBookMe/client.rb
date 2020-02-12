# frozen_string_literal: true

require 'YouCanBookMe/client/profiles'
require 'YouCanBookMe/client/profiles/bookings'
require 'YouCanBookMe/client/bookings'

module YouCanBookMe
  class Client
    include YouCanBookMe::Client::Profiles
    include YouCanBookMe::Client::Profiles::Bookings
    include YouCanBookMe::Client::Bookings

    def initialize(options = {})
      email = options[:email] || ENV['YOUCANBOOKME_EMAIL']
      password = options[:password] || ENV['YOUCANBOOKME_PASSWORD']

      raise YouCanBookMe::AuthorizationNotSpecified if email.empty? || password.empty?

      YouCanBookMe.instance_variable_set(:@email, email)
      YouCanBookMe.instance_variable_set(:@password, password)
    end
  end
end
