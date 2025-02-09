# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/storagetransfer/v1/transfer.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/storagetransfer/v1/transfer_types_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/storagetransfer/v1/transfer.proto", :syntax => :proto3) do
    add_message "google.storagetransfer.v1.GetGoogleServiceAccountRequest" do
      optional :project_id, :string, 1
    end
    add_message "google.storagetransfer.v1.CreateTransferJobRequest" do
      optional :transfer_job, :message, 1, "google.storagetransfer.v1.TransferJob"
    end
    add_message "google.storagetransfer.v1.UpdateTransferJobRequest" do
      optional :job_name, :string, 1
      optional :project_id, :string, 2
      optional :transfer_job, :message, 3, "google.storagetransfer.v1.TransferJob"
      optional :update_transfer_job_field_mask, :message, 4, "google.protobuf.FieldMask"
    end
    add_message "google.storagetransfer.v1.GetTransferJobRequest" do
      optional :job_name, :string, 1
      optional :project_id, :string, 2
    end
    add_message "google.storagetransfer.v1.ListTransferJobsRequest" do
      optional :filter, :string, 1
      optional :page_size, :int32, 4
      optional :page_token, :string, 5
    end
    add_message "google.storagetransfer.v1.ListTransferJobsResponse" do
      repeated :transfer_jobs, :message, 1, "google.storagetransfer.v1.TransferJob"
      optional :next_page_token, :string, 2
    end
    add_message "google.storagetransfer.v1.PauseTransferOperationRequest" do
      optional :name, :string, 1
    end
    add_message "google.storagetransfer.v1.ResumeTransferOperationRequest" do
      optional :name, :string, 1
    end
    add_message "google.storagetransfer.v1.RunTransferJobRequest" do
      optional :job_name, :string, 1
      optional :project_id, :string, 2
    end
  end
end

module Google
  module Cloud
    module StorageTransfer
      module V1
        GetGoogleServiceAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GetGoogleServiceAccountRequest").msgclass
        CreateTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.CreateTransferJobRequest").msgclass
        UpdateTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.UpdateTransferJobRequest").msgclass
        GetTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GetTransferJobRequest").msgclass
        ListTransferJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ListTransferJobsRequest").msgclass
        ListTransferJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ListTransferJobsResponse").msgclass
        PauseTransferOperationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.PauseTransferOperationRequest").msgclass
        ResumeTransferOperationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ResumeTransferOperationRequest").msgclass
        RunTransferJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.RunTransferJobRequest").msgclass
      end
    end
  end
end
