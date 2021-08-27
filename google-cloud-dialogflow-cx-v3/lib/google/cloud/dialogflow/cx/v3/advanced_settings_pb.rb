# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/advanced_settings.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/duration_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/advanced_settings.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.AdvancedSettings" do
      optional :logging_settings, :message, 6, "google.cloud.dialogflow.cx.v3.AdvancedSettings.LoggingSettings"
    end
    add_message "google.cloud.dialogflow.cx.v3.AdvancedSettings.LoggingSettings" do
      optional :enable_stackdriver_logging, :bool, 2
      optional :enable_interaction_logging, :bool, 3
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          AdvancedSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AdvancedSettings").msgclass
          AdvancedSettings::LoggingSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AdvancedSettings.LoggingSettings").msgclass
        end
      end
    end
  end
end
