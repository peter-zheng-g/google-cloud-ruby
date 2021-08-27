# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/dataflow/v1beta3/metrics.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/client_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/dataflow/v1beta3/metrics.proto", :syntax => :proto3) do
    add_message "google.dataflow.v1beta3.MetricStructuredName" do
      optional :origin, :string, 1
      optional :name, :string, 2
      map :context, :string, :string, 3
    end
    add_message "google.dataflow.v1beta3.MetricUpdate" do
      optional :name, :message, 1, "google.dataflow.v1beta3.MetricStructuredName"
      optional :kind, :string, 2
      optional :cumulative, :bool, 3
      optional :scalar, :message, 4, "google.protobuf.Value"
      optional :mean_sum, :message, 5, "google.protobuf.Value"
      optional :mean_count, :message, 6, "google.protobuf.Value"
      optional :set, :message, 7, "google.protobuf.Value"
      optional :distribution, :message, 11, "google.protobuf.Value"
      optional :gauge, :message, 12, "google.protobuf.Value"
      optional :internal, :message, 8, "google.protobuf.Value"
      optional :update_time, :message, 9, "google.protobuf.Timestamp"
    end
    add_message "google.dataflow.v1beta3.GetJobMetricsRequest" do
      optional :project_id, :string, 1
      optional :job_id, :string, 2
      optional :start_time, :message, 3, "google.protobuf.Timestamp"
      optional :location, :string, 4
    end
    add_message "google.dataflow.v1beta3.JobMetrics" do
      optional :metric_time, :message, 1, "google.protobuf.Timestamp"
      repeated :metrics, :message, 2, "google.dataflow.v1beta3.MetricUpdate"
    end
    add_message "google.dataflow.v1beta3.GetJobExecutionDetailsRequest" do
      optional :project_id, :string, 1
      optional :job_id, :string, 2
      optional :location, :string, 3
      optional :page_size, :int32, 4
      optional :page_token, :string, 5
    end
    add_message "google.dataflow.v1beta3.ProgressTimeseries" do
      optional :current_progress, :double, 1
      repeated :data_points, :message, 2, "google.dataflow.v1beta3.ProgressTimeseries.Point"
    end
    add_message "google.dataflow.v1beta3.ProgressTimeseries.Point" do
      optional :time, :message, 1, "google.protobuf.Timestamp"
      optional :value, :double, 2
    end
    add_message "google.dataflow.v1beta3.StageSummary" do
      optional :stage_id, :string, 1
      optional :state, :enum, 2, "google.dataflow.v1beta3.ExecutionState"
      optional :start_time, :message, 3, "google.protobuf.Timestamp"
      optional :end_time, :message, 4, "google.protobuf.Timestamp"
      optional :progress, :message, 5, "google.dataflow.v1beta3.ProgressTimeseries"
      repeated :metrics, :message, 6, "google.dataflow.v1beta3.MetricUpdate"
    end
    add_message "google.dataflow.v1beta3.JobExecutionDetails" do
      repeated :stages, :message, 1, "google.dataflow.v1beta3.StageSummary"
      optional :next_page_token, :string, 2
    end
    add_message "google.dataflow.v1beta3.GetStageExecutionDetailsRequest" do
      optional :project_id, :string, 1
      optional :job_id, :string, 2
      optional :location, :string, 3
      optional :stage_id, :string, 4
      optional :page_size, :int32, 5
      optional :page_token, :string, 6
      optional :start_time, :message, 7, "google.protobuf.Timestamp"
      optional :end_time, :message, 8, "google.protobuf.Timestamp"
    end
    add_message "google.dataflow.v1beta3.WorkItemDetails" do
      optional :task_id, :string, 1
      optional :attempt_id, :string, 2
      optional :start_time, :message, 3, "google.protobuf.Timestamp"
      optional :end_time, :message, 4, "google.protobuf.Timestamp"
      optional :state, :enum, 5, "google.dataflow.v1beta3.ExecutionState"
      optional :progress, :message, 6, "google.dataflow.v1beta3.ProgressTimeseries"
      repeated :metrics, :message, 7, "google.dataflow.v1beta3.MetricUpdate"
    end
    add_message "google.dataflow.v1beta3.WorkerDetails" do
      optional :worker_name, :string, 1
      repeated :work_items, :message, 2, "google.dataflow.v1beta3.WorkItemDetails"
    end
    add_message "google.dataflow.v1beta3.StageExecutionDetails" do
      repeated :workers, :message, 1, "google.dataflow.v1beta3.WorkerDetails"
      optional :next_page_token, :string, 2
    end
    add_enum "google.dataflow.v1beta3.ExecutionState" do
      value :EXECUTION_STATE_UNKNOWN, 0
      value :EXECUTION_STATE_NOT_STARTED, 1
      value :EXECUTION_STATE_RUNNING, 2
      value :EXECUTION_STATE_SUCCEEDED, 3
      value :EXECUTION_STATE_FAILED, 4
      value :EXECUTION_STATE_CANCELLED, 5
    end
  end
end

module Google
  module Cloud
    module Dataflow
      module V1beta3
        MetricStructuredName = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.MetricStructuredName").msgclass
        MetricUpdate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.MetricUpdate").msgclass
        GetJobMetricsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetJobMetricsRequest").msgclass
        JobMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobMetrics").msgclass
        GetJobExecutionDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetJobExecutionDetailsRequest").msgclass
        ProgressTimeseries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ProgressTimeseries").msgclass
        ProgressTimeseries::Point = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ProgressTimeseries.Point").msgclass
        StageSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.StageSummary").msgclass
        JobExecutionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobExecutionDetails").msgclass
        GetStageExecutionDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetStageExecutionDetailsRequest").msgclass
        WorkItemDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkItemDetails").msgclass
        WorkerDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkerDetails").msgclass
        StageExecutionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.StageExecutionDetails").msgclass
        ExecutionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionState").enummodule
      end
    end
  end
end
