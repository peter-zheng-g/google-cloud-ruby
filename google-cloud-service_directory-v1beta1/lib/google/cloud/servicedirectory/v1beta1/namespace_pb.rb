# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/servicedirectory/v1beta1/namespace.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/servicedirectory/v1beta1/namespace.proto", :syntax => :proto3) do
    add_message "google.cloud.servicedirectory.v1beta1.Namespace" do
      optional :name, :string, 1
      map :labels, :string, :string, 2
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module ServiceDirectory
      module V1beta1
        Namespace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.servicedirectory.v1beta1.Namespace").msgclass
      end
    end
  end
end
