# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/environment.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/v2/environment_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module Environments
          # Service for managing [Environments][google.cloud.dialogflow.v2.Environment].
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.Environments'

            # Returns the list of all non-default environments of the specified agent.
            rpc :ListEnvironments, ::Google::Cloud::Dialogflow::V2::ListEnvironmentsRequest, ::Google::Cloud::Dialogflow::V2::ListEnvironmentsResponse
            # Retrieves the specified agent environment.
            rpc :GetEnvironment, ::Google::Cloud::Dialogflow::V2::GetEnvironmentRequest, ::Google::Cloud::Dialogflow::V2::Environment
            # Creates an agent environment.
            rpc :CreateEnvironment, ::Google::Cloud::Dialogflow::V2::CreateEnvironmentRequest, ::Google::Cloud::Dialogflow::V2::Environment
            # Updates the specified agent environment.
            #
            # This method allows you to deploy new agent versions into the environment.
            # When an environment is pointed to a new agent version by setting
            # `environment.agent_version`, the environment is temporarily set to the
            # `LOADING` state. During that time, the environment continues serving the
            # previous version of the agent. After the new agent version is done loading,
            # the environment is set back to the `RUNNING` state.
            # You can use "-" as Environment ID in environment name to update an agent
            # version in the default environment. WARNING: this will negate all recent
            # changes to the draft agent and can't be undone. You may want to save the
            # draft agent to a version before calling this method.
            rpc :UpdateEnvironment, ::Google::Cloud::Dialogflow::V2::UpdateEnvironmentRequest, ::Google::Cloud::Dialogflow::V2::Environment
            # Deletes the specified agent environment.
            rpc :DeleteEnvironment, ::Google::Cloud::Dialogflow::V2::DeleteEnvironmentRequest, ::Google::Protobuf::Empty
            # Gets the history of the specified environment.
            rpc :GetEnvironmentHistory, ::Google::Cloud::Dialogflow::V2::GetEnvironmentHistoryRequest, ::Google::Cloud::Dialogflow::V2::EnvironmentHistory
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
