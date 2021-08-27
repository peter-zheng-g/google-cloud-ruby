# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/appengine/v1/appengine_pb"

module Google
  module Cloud
    module AppEngine
      module V1
        module AuthorizedCertificates
          ##
          # Client for the AuthorizedCertificates service.
          #
          # Manages SSL certificates a user is authorized to administer. A user can
          # administer any SSL certificates applicable to their authorized domains.
          #
          class Client
            # @private
            attr_reader :authorized_certificates_stub

            ##
            # Configure the AuthorizedCertificates Client class.
            #
            # See {::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all AuthorizedCertificates clients
            #   ::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "AppEngine", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the AuthorizedCertificates Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new AuthorizedCertificates client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the AuthorizedCertificates client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/appengine/v1/appengine_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @authorized_certificates_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Lists all SSL certificates the user is authorized to administer.
            #
            # @overload list_authorized_certificates(request, options = nil)
            #   Pass arguments to `list_authorized_certificates` via a request object, either of type
            #   {::Google::Cloud::AppEngine::V1::ListAuthorizedCertificatesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AppEngine::V1::ListAuthorizedCertificatesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_authorized_certificates(parent: nil, view: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_authorized_certificates` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Name of the parent `Application` resource. Example: `apps/myapp`.
            #   @param view [::Google::Cloud::AppEngine::V1::AuthorizedCertificateView]
            #     Controls the set of fields returned in the `LIST` response.
            #   @param page_size [::Integer]
            #     Maximum results to return per page.
            #   @param page_token [::String]
            #     Continuation token for fetching the next page of results.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::AppEngine::V1::AuthorizedCertificate>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::AppEngine::V1::AuthorizedCertificate>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def list_authorized_certificates request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::ListAuthorizedCertificatesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_authorized_certificates.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AppEngine::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "parent" => request.parent
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_authorized_certificates.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_authorized_certificates.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @authorized_certificates_stub.call_rpc :list_authorized_certificates, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @authorized_certificates_stub, :list_authorized_certificates, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets the specified SSL certificate.
            #
            # @overload get_authorized_certificate(request, options = nil)
            #   Pass arguments to `get_authorized_certificate` via a request object, either of type
            #   {::Google::Cloud::AppEngine::V1::GetAuthorizedCertificateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AppEngine::V1::GetAuthorizedCertificateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_authorized_certificate(name: nil, view: nil)
            #   Pass arguments to `get_authorized_certificate` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Name of the resource requested. Example:
            #     `apps/myapp/authorizedCertificates/12345`.
            #   @param view [::Google::Cloud::AppEngine::V1::AuthorizedCertificateView]
            #     Controls the set of fields returned in the `GET` response.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def get_authorized_certificate request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::GetAuthorizedCertificateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_authorized_certificate.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AppEngine::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_authorized_certificate.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_authorized_certificate.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @authorized_certificates_stub.call_rpc :get_authorized_certificate, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Uploads the specified SSL certificate.
            #
            # @overload create_authorized_certificate(request, options = nil)
            #   Pass arguments to `create_authorized_certificate` via a request object, either of type
            #   {::Google::Cloud::AppEngine::V1::CreateAuthorizedCertificateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AppEngine::V1::CreateAuthorizedCertificateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_authorized_certificate(parent: nil, certificate: nil)
            #   Pass arguments to `create_authorized_certificate` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Name of the parent `Application` resource. Example: `apps/myapp`.
            #   @param certificate [::Google::Cloud::AppEngine::V1::AuthorizedCertificate, ::Hash]
            #     SSL certificate data.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def create_authorized_certificate request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::CreateAuthorizedCertificateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_authorized_certificate.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AppEngine::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "parent" => request.parent
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_authorized_certificate.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_authorized_certificate.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @authorized_certificates_stub.call_rpc :create_authorized_certificate, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates the specified SSL certificate. To renew a certificate and maintain
            # its existing domain mappings, update `certificate_data` with a new
            # certificate. The new certificate must be applicable to the same domains as
            # the original certificate. The certificate `display_name` may also be
            # updated.
            #
            # @overload update_authorized_certificate(request, options = nil)
            #   Pass arguments to `update_authorized_certificate` via a request object, either of type
            #   {::Google::Cloud::AppEngine::V1::UpdateAuthorizedCertificateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AppEngine::V1::UpdateAuthorizedCertificateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_authorized_certificate(name: nil, certificate: nil, update_mask: nil)
            #   Pass arguments to `update_authorized_certificate` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Name of the resource to update. Example:
            #     `apps/myapp/authorizedCertificates/12345`.
            #   @param certificate [::Google::Cloud::AppEngine::V1::AuthorizedCertificate, ::Hash]
            #     An `AuthorizedCertificate` containing the updated resource. Only fields set
            #     in the field mask will be updated.
            #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
            #     Standard field mask for the set of fields to be updated. Updates are only
            #     supported on the `certificate_raw_data` and `display_name` fields.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::AppEngine::V1::AuthorizedCertificate]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def update_authorized_certificate request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::UpdateAuthorizedCertificateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_authorized_certificate.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AppEngine::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_authorized_certificate.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_authorized_certificate.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @authorized_certificates_stub.call_rpc :update_authorized_certificate, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes the specified SSL certificate.
            #
            # @overload delete_authorized_certificate(request, options = nil)
            #   Pass arguments to `delete_authorized_certificate` via a request object, either of type
            #   {::Google::Cloud::AppEngine::V1::DeleteAuthorizedCertificateRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::AppEngine::V1::DeleteAuthorizedCertificateRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_authorized_certificate(name: nil)
            #   Pass arguments to `delete_authorized_certificate` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Name of the resource to delete. Example:
            #     `apps/myapp/authorizedCertificates/12345`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def delete_authorized_certificate request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AppEngine::V1::DeleteAuthorizedCertificateRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_authorized_certificate.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::AppEngine::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_authorized_certificate.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_authorized_certificate.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @authorized_certificates_stub.call_rpc :delete_authorized_certificate, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the AuthorizedCertificates API.
            #
            # This class represents the configuration for AuthorizedCertificates,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_authorized_certificates to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_authorized_certificates.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::AppEngine::V1::AuthorizedCertificates::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_authorized_certificates.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"appengine.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "appengine.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the AuthorizedCertificates API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `list_authorized_certificates`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_authorized_certificates
                ##
                # RPC-specific configuration for `get_authorized_certificate`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_authorized_certificate
                ##
                # RPC-specific configuration for `create_authorized_certificate`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_authorized_certificate
                ##
                # RPC-specific configuration for `update_authorized_certificate`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_authorized_certificate
                ##
                # RPC-specific configuration for `delete_authorized_certificate`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_authorized_certificate

                # @private
                def initialize parent_rpcs = nil
                  list_authorized_certificates_config = parent_rpcs.list_authorized_certificates if parent_rpcs.respond_to? :list_authorized_certificates
                  @list_authorized_certificates = ::Gapic::Config::Method.new list_authorized_certificates_config
                  get_authorized_certificate_config = parent_rpcs.get_authorized_certificate if parent_rpcs.respond_to? :get_authorized_certificate
                  @get_authorized_certificate = ::Gapic::Config::Method.new get_authorized_certificate_config
                  create_authorized_certificate_config = parent_rpcs.create_authorized_certificate if parent_rpcs.respond_to? :create_authorized_certificate
                  @create_authorized_certificate = ::Gapic::Config::Method.new create_authorized_certificate_config
                  update_authorized_certificate_config = parent_rpcs.update_authorized_certificate if parent_rpcs.respond_to? :update_authorized_certificate
                  @update_authorized_certificate = ::Gapic::Config::Method.new update_authorized_certificate_config
                  delete_authorized_certificate_config = parent_rpcs.delete_authorized_certificate if parent_rpcs.respond_to? :delete_authorized_certificate
                  @delete_authorized_certificate = ::Gapic::Config::Method.new delete_authorized_certificate_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
