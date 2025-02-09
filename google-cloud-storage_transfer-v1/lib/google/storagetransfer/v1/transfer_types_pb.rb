# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/storagetransfer/v1/transfer_types.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/code_pb'
require 'google/type/date_pb'
require 'google/type/timeofday_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/storagetransfer/v1/transfer_types.proto", :syntax => :proto3) do
    add_message "google.storagetransfer.v1.GoogleServiceAccount" do
      optional :account_email, :string, 1
      optional :subject_id, :string, 2
    end
    add_message "google.storagetransfer.v1.AwsAccessKey" do
      optional :access_key_id, :string, 1
      optional :secret_access_key, :string, 2
    end
    add_message "google.storagetransfer.v1.AzureCredentials" do
      optional :sas_token, :string, 2
    end
    add_message "google.storagetransfer.v1.ObjectConditions" do
      optional :min_time_elapsed_since_last_modification, :message, 1, "google.protobuf.Duration"
      optional :max_time_elapsed_since_last_modification, :message, 2, "google.protobuf.Duration"
      repeated :include_prefixes, :string, 3
      repeated :exclude_prefixes, :string, 4
      optional :last_modified_since, :message, 5, "google.protobuf.Timestamp"
      optional :last_modified_before, :message, 6, "google.protobuf.Timestamp"
    end
    add_message "google.storagetransfer.v1.GcsData" do
      optional :bucket_name, :string, 1
      optional :path, :string, 3
    end
    add_message "google.storagetransfer.v1.AwsS3Data" do
      optional :bucket_name, :string, 1
      optional :aws_access_key, :message, 2, "google.storagetransfer.v1.AwsAccessKey"
      optional :path, :string, 3
      optional :role_arn, :string, 4
    end
    add_message "google.storagetransfer.v1.AzureBlobStorageData" do
      optional :storage_account, :string, 1
      optional :azure_credentials, :message, 2, "google.storagetransfer.v1.AzureCredentials"
      optional :container, :string, 4
      optional :path, :string, 5
    end
    add_message "google.storagetransfer.v1.HttpData" do
      optional :list_url, :string, 1
    end
    add_message "google.storagetransfer.v1.TransferOptions" do
      optional :overwrite_objects_already_existing_in_sink, :bool, 1
      optional :delete_objects_unique_in_sink, :bool, 2
      optional :delete_objects_from_source_after_transfer, :bool, 3
    end
    add_message "google.storagetransfer.v1.TransferSpec" do
      optional :object_conditions, :message, 5, "google.storagetransfer.v1.ObjectConditions"
      optional :transfer_options, :message, 6, "google.storagetransfer.v1.TransferOptions"
      oneof :data_sink do
        optional :gcs_data_sink, :message, 4, "google.storagetransfer.v1.GcsData"
      end
      oneof :data_source do
        optional :gcs_data_source, :message, 1, "google.storagetransfer.v1.GcsData"
        optional :aws_s3_data_source, :message, 2, "google.storagetransfer.v1.AwsS3Data"
        optional :http_data_source, :message, 3, "google.storagetransfer.v1.HttpData"
        optional :azure_blob_storage_data_source, :message, 8, "google.storagetransfer.v1.AzureBlobStorageData"
      end
    end
    add_message "google.storagetransfer.v1.Schedule" do
      optional :schedule_start_date, :message, 1, "google.type.Date"
      optional :schedule_end_date, :message, 2, "google.type.Date"
      optional :start_time_of_day, :message, 3, "google.type.TimeOfDay"
      optional :end_time_of_day, :message, 4, "google.type.TimeOfDay"
      optional :repeat_interval, :message, 5, "google.protobuf.Duration"
    end
    add_message "google.storagetransfer.v1.TransferJob" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :project_id, :string, 3
      optional :transfer_spec, :message, 4, "google.storagetransfer.v1.TransferSpec"
      optional :notification_config, :message, 11, "google.storagetransfer.v1.NotificationConfig"
      optional :schedule, :message, 5, "google.storagetransfer.v1.Schedule"
      optional :status, :enum, 6, "google.storagetransfer.v1.TransferJob.Status"
      optional :creation_time, :message, 7, "google.protobuf.Timestamp"
      optional :last_modification_time, :message, 8, "google.protobuf.Timestamp"
      optional :deletion_time, :message, 9, "google.protobuf.Timestamp"
      optional :latest_operation_name, :string, 12
    end
    add_enum "google.storagetransfer.v1.TransferJob.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :ENABLED, 1
      value :DISABLED, 2
      value :DELETED, 3
    end
    add_message "google.storagetransfer.v1.ErrorLogEntry" do
      optional :url, :string, 1
      repeated :error_details, :string, 3
    end
    add_message "google.storagetransfer.v1.ErrorSummary" do
      optional :error_code, :enum, 1, "google.rpc.Code"
      optional :error_count, :int64, 2
      repeated :error_log_entries, :message, 3, "google.storagetransfer.v1.ErrorLogEntry"
    end
    add_message "google.storagetransfer.v1.TransferCounters" do
      optional :objects_found_from_source, :int64, 1
      optional :bytes_found_from_source, :int64, 2
      optional :objects_found_only_from_sink, :int64, 3
      optional :bytes_found_only_from_sink, :int64, 4
      optional :objects_from_source_skipped_by_sync, :int64, 5
      optional :bytes_from_source_skipped_by_sync, :int64, 6
      optional :objects_copied_to_sink, :int64, 7
      optional :bytes_copied_to_sink, :int64, 8
      optional :objects_deleted_from_source, :int64, 9
      optional :bytes_deleted_from_source, :int64, 10
      optional :objects_deleted_from_sink, :int64, 11
      optional :bytes_deleted_from_sink, :int64, 12
      optional :objects_from_source_failed, :int64, 13
      optional :bytes_from_source_failed, :int64, 14
      optional :objects_failed_to_delete_from_sink, :int64, 15
      optional :bytes_failed_to_delete_from_sink, :int64, 16
    end
    add_message "google.storagetransfer.v1.NotificationConfig" do
      optional :pubsub_topic, :string, 1
      repeated :event_types, :enum, 2, "google.storagetransfer.v1.NotificationConfig.EventType"
      optional :payload_format, :enum, 3, "google.storagetransfer.v1.NotificationConfig.PayloadFormat"
    end
    add_enum "google.storagetransfer.v1.NotificationConfig.EventType" do
      value :EVENT_TYPE_UNSPECIFIED, 0
      value :TRANSFER_OPERATION_SUCCESS, 1
      value :TRANSFER_OPERATION_FAILED, 2
      value :TRANSFER_OPERATION_ABORTED, 3
    end
    add_enum "google.storagetransfer.v1.NotificationConfig.PayloadFormat" do
      value :PAYLOAD_FORMAT_UNSPECIFIED, 0
      value :NONE, 1
      value :JSON, 2
    end
    add_message "google.storagetransfer.v1.TransferOperation" do
      optional :name, :string, 1
      optional :project_id, :string, 2
      optional :transfer_spec, :message, 3, "google.storagetransfer.v1.TransferSpec"
      optional :notification_config, :message, 10, "google.storagetransfer.v1.NotificationConfig"
      optional :start_time, :message, 4, "google.protobuf.Timestamp"
      optional :end_time, :message, 5, "google.protobuf.Timestamp"
      optional :status, :enum, 6, "google.storagetransfer.v1.TransferOperation.Status"
      optional :counters, :message, 7, "google.storagetransfer.v1.TransferCounters"
      repeated :error_breakdowns, :message, 8, "google.storagetransfer.v1.ErrorSummary"
      optional :transfer_job_name, :string, 9
    end
    add_enum "google.storagetransfer.v1.TransferOperation.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :IN_PROGRESS, 1
      value :PAUSED, 2
      value :SUCCESS, 3
      value :FAILED, 4
      value :ABORTED, 5
      value :QUEUED, 6
    end
  end
end

module Google
  module Cloud
    module StorageTransfer
      module V1
        GoogleServiceAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GoogleServiceAccount").msgclass
        AwsAccessKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AwsAccessKey").msgclass
        AzureCredentials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AzureCredentials").msgclass
        ObjectConditions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ObjectConditions").msgclass
        GcsData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GcsData").msgclass
        AwsS3Data = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AwsS3Data").msgclass
        AzureBlobStorageData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AzureBlobStorageData").msgclass
        HttpData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.HttpData").msgclass
        TransferOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOptions").msgclass
        TransferSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferSpec").msgclass
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.Schedule").msgclass
        TransferJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferJob").msgclass
        TransferJob::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferJob.Status").enummodule
        ErrorLogEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ErrorLogEntry").msgclass
        ErrorSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ErrorSummary").msgclass
        TransferCounters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferCounters").msgclass
        NotificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.NotificationConfig").msgclass
        NotificationConfig::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.NotificationConfig.EventType").enummodule
        NotificationConfig::PayloadFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.NotificationConfig.PayloadFormat").enummodule
        TransferOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOperation").msgclass
        TransferOperation::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOperation.Status").enummodule
      end
    end
  end
end
