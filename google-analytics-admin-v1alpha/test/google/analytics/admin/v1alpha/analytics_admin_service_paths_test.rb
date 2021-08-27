# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/analytics/admin/v1alpha/analytics_admin_service"

class ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::ClientPathsTest < Minitest::Test
  def test_account_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.account_path account: "value0"
      assert_equal "accounts/value0", path
    end
  end

  def test_android_app_data_stream_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.android_app_data_stream_path property: "value0", android_app_data_stream: "value1"
      assert_equal "properties/value0/androidAppDataStreams/value1", path
    end
  end

  def test_conversion_event_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversion_event_path property: "value0", conversion_event: "value1"
      assert_equal "properties/value0/conversionEvents/value1", path
    end
  end

  def test_custom_dimension_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.custom_dimension_path property: "value0"
      assert_equal "properties/value0/customDimensions", path
    end
  end

  def test_custom_metric_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.custom_metric_path property: "value0"
      assert_equal "properties/value0/customMetrics", path
    end
  end

  def test_data_retention_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_retention_settings_path property: "value0"
      assert_equal "properties/value0/dataRetentionSettings", path
    end
  end

  def test_data_sharing_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_sharing_settings_path account: "value0"
      assert_equal "accounts/value0/dataSharingSettings", path
    end
  end

  def test_display_video360_advertiser_link_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.display_video360_advertiser_link_path property: "value0", display_video_360_advertiser_link: "value1"
      assert_equal "properties/value0/displayVideo360AdvertiserLinks/value1", path
    end
  end

  def test_display_video360_advertiser_link_proposal_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.display_video360_advertiser_link_proposal_path property: "value0", display_video_360_advertiser_link_proposal: "value1"
      assert_equal "properties/value0/displayVideo360AdvertiserLinkProposals/value1", path
    end
  end

  def test_enhanced_measurement_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.enhanced_measurement_settings_path property: "value0", web_data_stream: "value1"
      assert_equal "properties/value0/webDataStreams/value1/enhancedMeasurementSettings", path
    end
  end

  def test_firebase_link_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.firebase_link_path property: "value0", firebase_link: "value1"
      assert_equal "properties/value0/firebaseLinks/value1", path
    end
  end

  def test_global_site_tag_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.global_site_tag_path property: "value0"
      assert_equal "properties/value0/globalSiteTag", path
    end
  end

  def test_google_ads_link_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.google_ads_link_path property: "value0", google_ads_link: "value1"
      assert_equal "properties/value0/googleAdsLinks/value1", path
    end
  end

  def test_google_signals_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.google_signals_settings_path property: "value0"
      assert_equal "properties/value0/googleSignalsSettings", path
    end
  end

  def test_ios_app_data_stream_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.ios_app_data_stream_path property: "value0", ios_app_data_stream: "value1"
      assert_equal "properties/value0/iosAppDataStreams/value1", path
    end
  end

  def test_measurement_protocol_secret_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.measurement_protocol_secret_path property: "value0", web_data_stream: "value1", measurement_protocol_secret: "value2"
      assert_equal "properties/value0/webDataStreams/value1/measurementProtocolSecrets/value2", path
    end
  end

  def test_property_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.property_path property: "value0"
      assert_equal "properties/value0", path
    end
  end

  def test_user_link_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.user_link_path account: "value0", user_link: "value1"
      assert_equal "accounts/value0/userLinks/value1", path

      path = client.user_link_path property: "value0", user_link: "value1"
      assert_equal "properties/value0/userLinks/value1", path
    end
  end

  def test_web_data_stream_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.web_data_stream_path property: "value0", web_data_stream: "value1"
      assert_equal "properties/value0/webDataStreams/value1", path
    end
  end
end
