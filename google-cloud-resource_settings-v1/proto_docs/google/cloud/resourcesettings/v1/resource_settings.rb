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


module Google
  module Cloud
    module ResourceSettings
      module V1
        # The schema for settings.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the setting. Must be in one of the following forms:
        #
        #     * `projects/{project_number}/settings/{setting_name}`
        #     * `folders/{folder_id}/settings/{setting_name}`
        #     * `organizations/{organization_id}/settings/{setting_name}`
        #
        #     For example, "/projects/123/settings/gcp-enableMyFeature"
        # @!attribute [r] metadata
        #   @return [::Google::Cloud::ResourceSettings::V1::SettingMetadata]
        #     Output only. Metadata about a setting which is not editable by the end user.
        # @!attribute [rw] local_value
        #   @return [::Google::Cloud::ResourceSettings::V1::Value]
        #     The configured value of the setting at the given parent resource (ignoring
        #     the resource hierarchy). The data type of {::Google::Cloud::ResourceSettings::V1::Value Value} must always be
        #     consistent with the data type defined in {::Google::Cloud::ResourceSettings::V1::Setting#metadata Setting.metadata}.
        # @!attribute [r] effective_value
        #   @return [::Google::Cloud::ResourceSettings::V1::Value]
        #     Output only. The computed effective value of the setting at the given parent resource
        #     (based on the resource hierarchy).
        #
        #     The effective value evaluates to one of the following options in the given
        #     order (the next option is used if the previous one does not exist):
        #
        #     1. the local setting value on the given resource: {::Google::Cloud::ResourceSettings::V1::Setting#local_value Setting.local_value}
        #     2. if one of the given resource's ancestors have a local setting value,
        #        the local value at the nearest such ancestor
        #     3. the setting's default value: {::Google::Cloud::ResourceSettings::V1::SettingMetadata#default_value SettingMetadata.default_value}
        #     4. an empty value (defined as a `Value` with all fields unset)
        #
        #     The data type of {::Google::Cloud::ResourceSettings::V1::Value Value} must always be
        #     consistent with the data type defined in {::Google::Cloud::ResourceSettings::V1::Setting#metadata Setting.metadata}.
        # @!attribute [rw] etag
        #   @return [::String]
        #     A fingerprint used for optimistic concurrency. See
        #     {::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client#update_setting UpdateSetting} for more
        #     details.
        class Setting
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata about a setting which is not editable by the end user.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The human readable name for this setting.
        # @!attribute [rw] description
        #   @return [::String]
        #     A detailed description of what this setting does.
        # @!attribute [rw] read_only
        #   @return [::Boolean]
        #     A flag indicating that values of this setting cannot be modified (see
        #     documentation of the specific setting for updates and reasons).
        # @!attribute [rw] data_type
        #   @return [::Google::Cloud::ResourceSettings::V1::SettingMetadata::DataType]
        #     The data type for this setting.
        # @!attribute [rw] default_value
        #   @return [::Google::Cloud::ResourceSettings::V1::Value]
        #     The value provided by {::Google::Cloud::ResourceSettings::V1::Setting#effective_value Setting.effective_value} if no setting value is
        #     explicitly set.
        #
        #     Note: not all settings have a default value.
        class SettingMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The data type for setting values of this setting. See {::Google::Cloud::ResourceSettings::V1::Value Value} for more
          # details on the available data types.
          module DataType
            # Unspecified data type.
            DATA_TYPE_UNSPECIFIED = 0

            # A boolean setting.
            BOOLEAN = 1

            # A string setting.
            STRING = 2

            # A string set setting.
            STRING_SET = 3

            # A Enum setting
            ENUM_VALUE = 4
          end
        end

        # The data in a setting value.
        # @!attribute [rw] boolean_value
        #   @return [::Boolean]
        #     Defines this value as being a boolean value.
        # @!attribute [rw] string_value
        #   @return [::String]
        #     Defines this value as being a string value.
        # @!attribute [rw] string_set_value
        #   @return [::Google::Cloud::ResourceSettings::V1::Value::StringSet]
        #     Defines this value as being a StringSet.
        # @!attribute [rw] enum_value
        #   @return [::Google::Cloud::ResourceSettings::V1::Value::EnumValue]
        #     Defines this value as being a Enum.
        class Value
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A string set value that can hold a set of strings. The maximum length of
          # each string is 200 characters and there can be a maximum of 50 strings in
          # the string set.
          # @!attribute [rw] values
          #   @return [::Array<::String>]
          #     The strings in the set
          class StringSet
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A enum value that can hold any enum type setting values.
          # Each enum type is represented by a number, this representation
          # is stored in the definitions.
          # @!attribute [rw] value
          #   @return [::String]
          #     The value of this enum
          class EnumValue
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request for ListSettings.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The Cloud resource that parents the setting. Must be in one of the
        #     following forms:
        #
        #     * `projects/{project_number}`
        #     * `projects/{project_id}`
        #     * `folders/{folder_id}`
        #     * `organizations/{organization_id}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Unused. The size of the page to be returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Unused. A page token used to retrieve the next page.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ResourceSettings::V1::SettingView]
        #     The SettingView for this request.
        class ListSettingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response from ListSettings.
        # @!attribute [rw] settings
        #   @return [::Array<::Google::Cloud::ResourceSettings::V1::Setting>]
        #     A list of settings that are available at the specified Cloud resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Unused. A page token used to retrieve the next page.
        class ListSettingsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for GetSetting.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the setting to get. See {::Google::Cloud::ResourceSettings::V1::Setting Setting} for naming
        #     requirements.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ResourceSettings::V1::SettingView]
        #     The SettingView for this request.
        class GetSettingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for UpdateSetting.
        # @!attribute [rw] setting
        #   @return [::Google::Cloud::ResourceSettings::V1::Setting]
        #     Required. The setting to update. See {::Google::Cloud::ResourceSettings::V1::Setting Setting} for field requirements.
        class UpdateSettingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # View options for Settings.
        module SettingView
          # The default / unset value.
          # The API will default to the SETTING_VIEW_BASIC view.
          SETTING_VIEW_UNSPECIFIED = 0

          # Include {::Google::Cloud::ResourceSettings::V1::Setting#metadata Setting.metadata}, but nothing else.
          # This is the default value (for both ListSettings and GetSetting).
          SETTING_VIEW_BASIC = 1

          # Include {::Google::Cloud::ResourceSettings::V1::Setting#effective_value Setting.effective_value}, but nothing else.
          SETTING_VIEW_EFFECTIVE_VALUE = 2

          # Include {::Google::Cloud::ResourceSettings::V1::Setting#local_value Setting.local_value}, but nothing else.
          SETTING_VIEW_LOCAL_VALUE = 3
        end
      end
    end
  end
end
