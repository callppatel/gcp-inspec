# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
module GoogleInSpec
  module Compute
    module Property
      class BackendServiceIap
        attr_reader :enabled

        attr_reader :oauth2_client_id

        attr_reader :oauth2_client_secret

        attr_reader :oauth2_client_secret_sha256

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @enabled = args['enabled']
          @oauth2_client_id = args['oauth2ClientId']
          @oauth2_client_secret = args['oauth2ClientSecret']
          @oauth2_client_secret_sha256 = args['oauth2ClientSecretSha256']
        end

        def to_s
          "#{@parent_identifier} BackendServiceIap"
        end
      end
    end
  end
end