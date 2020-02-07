# frozen_string_literal: true

module YouCanBookMe
  class Error < StandardError
    class << self
      def raise_from(response)
        status = response.code
        return if (200..299).cover?(status)

        klass = case status
                when 400      then YouCanBookMe::BadRequest
                when 400..499 then YouCanBookMe::ClientError
                when 500 then YouCanBookMe::InternalServerError
                when 500..599 then YouCanBookMe::ServerError
                else YouCanBookMe::UnknownError
                end
        # FIXME
        raise klass, response.code
      end
    end
  end

  class AuthorizationNotSpecified < Error; end
  class ClientError < Error; end
  class BadRequest < ClientError; end
  class ServerError < Error; end
  class InternalServerError < ServerError; end
  class UnknownError < Error; end
end
