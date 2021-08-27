# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/environment.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/test_case_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/environment.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.Environment" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      repeated :version_configs, :message, 6, "google.cloud.dialogflow.cx.v3.Environment.VersionConfig"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.dialogflow.cx.v3.Environment.VersionConfig" do
      optional :version, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.ListEnvironmentsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.ListEnvironmentsResponse" do
      repeated :environments, :message, 1, "google.cloud.dialogflow.cx.v3.Environment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.GetEnvironmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.CreateEnvironmentRequest" do
      optional :parent, :string, 1
      optional :environment, :message, 2, "google.cloud.dialogflow.cx.v3.Environment"
    end
    add_message "google.cloud.dialogflow.cx.v3.UpdateEnvironmentRequest" do
      optional :environment, :message, 1, "google.cloud.dialogflow.cx.v3.Environment"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.dialogflow.cx.v3.DeleteEnvironmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.LookupEnvironmentHistoryRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.LookupEnvironmentHistoryResponse" do
      repeated :environments, :message, 1, "google.cloud.dialogflow.cx.v3.Environment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.ContinuousTestResult" do
      optional :name, :string, 1
      optional :result, :enum, 2, "google.cloud.dialogflow.cx.v3.ContinuousTestResult.AggregatedTestResult"
      repeated :test_case_results, :string, 3
      optional :run_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.dialogflow.cx.v3.ContinuousTestResult.AggregatedTestResult" do
      value :AGGREGATED_TEST_RESULT_UNSPECIFIED, 0
      value :PASSED, 1
      value :FAILED, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.RunContinuousTestRequest" do
      optional :environment, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.RunContinuousTestResponse" do
      optional :continuous_test_result, :message, 1, "google.cloud.dialogflow.cx.v3.ContinuousTestResult"
    end
    add_message "google.cloud.dialogflow.cx.v3.RunContinuousTestMetadata" do
      repeated :errors, :message, 1, "google.cloud.dialogflow.cx.v3.TestError"
    end
    add_message "google.cloud.dialogflow.cx.v3.ListContinuousTestResultsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.ListContinuousTestResultsResponse" do
      repeated :continuous_test_results, :message, 1, "google.cloud.dialogflow.cx.v3.ContinuousTestResult"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Environment").msgclass
          Environment::VersionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Environment.VersionConfig").msgclass
          ListEnvironmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListEnvironmentsRequest").msgclass
          ListEnvironmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListEnvironmentsResponse").msgclass
          GetEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetEnvironmentRequest").msgclass
          CreateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateEnvironmentRequest").msgclass
          UpdateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateEnvironmentRequest").msgclass
          DeleteEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteEnvironmentRequest").msgclass
          LookupEnvironmentHistoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.LookupEnvironmentHistoryRequest").msgclass
          LookupEnvironmentHistoryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.LookupEnvironmentHistoryResponse").msgclass
          ContinuousTestResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ContinuousTestResult").msgclass
          ContinuousTestResult::AggregatedTestResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ContinuousTestResult.AggregatedTestResult").enummodule
          RunContinuousTestRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RunContinuousTestRequest").msgclass
          RunContinuousTestResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RunContinuousTestResponse").msgclass
          RunContinuousTestMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.RunContinuousTestMetadata").msgclass
          ListContinuousTestResultsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListContinuousTestResultsRequest").msgclass
          ListContinuousTestResultsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListContinuousTestResultsResponse").msgclass
        end
      end
    end
  end
end
