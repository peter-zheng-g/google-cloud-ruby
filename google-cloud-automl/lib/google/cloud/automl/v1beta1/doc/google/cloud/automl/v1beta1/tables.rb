# Copyright 2019 Google LLC
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


module Google
  module Cloud
    module AutoML
      module V1beta1
        # Metadata for a dataset used for AutoML Tables.
        # @!attribute [rw] primary_table_spec_id
        #   @return [String]
        #     Output only. The table_spec_id of the primary table of this dataset.
        # @!attribute [rw] target_column_spec_id
        #   @return [String]
        #     column_spec_id of the primary table's column that should be used as the
        #     training & prediction target.
        #     This column must be non-nullable and have one of following data types
        #     (otherwise model creation will error):
        #
        #     * CATEGORY
        #
        #     * FLOAT64
        #
        #     If the type is CATEGORY , only up to
        #     100 unique values may exist in that column across all rows.
        #
        #     NOTE: Updates of this field will instantly affect any other users
        #     concurrently working with the dataset.
        # @!attribute [rw] weight_column_spec_id
        #   @return [String]
        #     column_spec_id of the primary table's column that should be used as the
        #     weight column, i.e. the higher the value the more important the row will be
        #     during model training.
        #     Required type: FLOAT64.
        #     Allowed values: 0 to 10000, inclusive on both ends; 0 means the row is
        #                     ignored for training.
        #     If not set all rows are assumed to have equal weight of 1.
        #     NOTE: Updates of this field will instantly affect any other users
        #     concurrently working with the dataset.
        # @!attribute [rw] ml_use_column_spec_id
        #   @return [String]
        #     column_spec_id of the primary table column which specifies a possible ML
        #     use of the row, i.e. the column will be used to split the rows into TRAIN,
        #     VALIDATE and TEST sets.
        #     Required type: STRING.
        #     This column, if set, must either have all of `TRAIN`, `VALIDATE`, `TEST`
        #     among its values, or only have `TEST`, `UNASSIGNED` values. In the latter
        #     case the rows with `UNASSIGNED` value will be assigned by AutoML. Note
        #     that if a given ml use distribution makes it impossible to create a "good"
        #     model, that call will error describing the issue.
        #     If both this column_spec_id and primary table's time_column_spec_id are not
        #     set, then all rows are treated as `UNASSIGNED`.
        #     NOTE: Updates of this field will instantly affect any other users
        #     concurrently working with the dataset.
        # @!attribute [rw] target_column_correlations
        #   @return [Hash{String => Google::Cloud::AutoML::V1beta1::CorrelationStats}]
        #     Output only. Correlations between
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesDatasetMetadata#target_column_spec_id TablesDatasetMetadata#target_column_spec_id},
        #     and other columns of the
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesDatasetMetadata#primary_table_spec_id TablesDatasetMetadataprimary_table}.
        #     Only set if the target column is set. Mapping from other column spec id to
        #     its CorrelationStats with the target column.
        #     This field may be stale, see the stats_update_time field for
        #     for the timestamp at which these stats were last updated.
        # @!attribute [rw] stats_update_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The most recent timestamp when target_column_correlations
        #     field and all descendant ColumnSpec.data_stats and
        #     ColumnSpec.top_correlated_columns fields were last (re-)generated. Any
        #     changes that happened to the dataset afterwards are not reflected in these
        #     fields values. The regeneration happens in the background on a best effort
        #     basis.
        class TablesDatasetMetadata; end

        # Model metadata specific to AutoML Tables.
        # @!attribute [rw] target_column_spec
        #   @return [Google::Cloud::AutoML::V1beta1::ColumnSpec]
        #     Column spec of the dataset's primary table's column the model is
        #     predicting. Snapshotted when model creation started.
        #     Only 3 fields are used:
        #     name - May be set on CreateModel, if it's not then the ColumnSpec
        #            corresponding to the current target_column_spec_id of the dataset
        #            the model is trained from is used.
        #            If neither is set, CreateModel will error.
        #     display_name - Output only.
        #     data_type - Output only.
        # @!attribute [rw] input_feature_column_specs
        #   @return [Array<Google::Cloud::AutoML::V1beta1::ColumnSpec>]
        #     Column specs of the dataset's primary table's columns, on which
        #     the model is trained and which are used as the input for predictions.
        #     The
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#target_column_spec target_column}
        #     as well as, according to dataset's state upon model creation,
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesDatasetMetadata#weight_column_spec_id weight_column},
        #     and
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesDatasetMetadata#ml_use_column_spec_id ml_use_column}
        #     must never be included here.
        #
        #     Only 3 fields are used:
        #
        #     * name - May be set on CreateModel, if set only the columns specified are
        #       used, otherwise all primary table's columns (except the ones listed
        #       above) are used for the training and prediction input.
        #
        #     * display_name - Output only.
        #
        #     * data_type - Output only.
        # @!attribute [rw] optimization_objective
        #   @return [String]
        #     Objective function the model is optimizing towards. The training process
        #     creates a model that maximizes/minimizes the value of the objective
        #     function over the validation set.
        #
        #     The supported optimization objectives depend on the prediction type.
        #     If the field is not set, a default objective function is used.
        #
        #     CLASSIFICATION_BINARY:
        #       "MAXIMIZE_AU_ROC" (default) - Maximize the area under the receiver
        #                                     operating characteristic (ROC) curve.
        #       "MINIMIZE_LOG_LOSS" - Minimize log loss.
        #       "MAXIMIZE_AU_PRC" - Maximize the area under the precision-recall curve.
        #       "MAXIMIZE_PRECISION_AT_RECALL" - Maximize precision for a specified
        #                                       recall value.
        #       "MAXIMIZE_RECALL_AT_PRECISION" - Maximize recall for a specified
        #                                        precision value.
        #
        #     CLASSIFICATION_MULTI_CLASS :
        #       "MINIMIZE_LOG_LOSS" (default) - Minimize log loss.
        #
        #
        #     REGRESSION:
        #       "MINIMIZE_RMSE" (default) - Minimize root-mean-squared error (RMSE).
        #       "MINIMIZE_MAE" - Minimize mean-absolute error (MAE).
        #       "MINIMIZE_RMSLE" - Minimize root-mean-squared log error (RMSLE).
        # @!attribute [rw] tables_model_column_info
        #   @return [Array<Google::Cloud::AutoML::V1beta1::TablesModelColumnInfo>]
        #     Output only. Auxiliary information for each of the
        #     input_feature_column_specs with respect to this particular model.
        # @!attribute [rw] train_budget_milli_node_hours
        #   @return [Integer]
        #     Required. The train budget of creating this model, expressed in milli node
        #     hours i.e. 1,000 value in this field means 1 node hour.
        #
        #     The training cost of the model will not exceed this budget. The final cost
        #     will be attempted to be close to the budget, though may end up being (even)
        #     noticeably smaller - at the backend's discretion. This especially may
        #     happen when further model training ceases to provide any improvements.
        #
        #     If the budget is set to a value known to be insufficient to train a
        #     model for the given dataset, the training won't be attempted and
        #     will error.
        #
        #     The train budget must be between 1,000 and 72,000 milli node hours,
        #     inclusive.
        # @!attribute [rw] train_cost_milli_node_hours
        #   @return [Integer]
        #     Output only. The actual training cost of the model, expressed in milli
        #     node hours, i.e. 1,000 value in this field means 1 node hour. Guaranteed
        #     to not exceed the train budget.
        # @!attribute [rw] disable_early_stopping
        #   @return [true, false]
        #     Use the entire training budget. This disables the early stopping feature.
        #     By default, the early stopping feature is enabled, which means that AutoML
        #     Tables might stop training before the entire training budget has been used.
        class TablesModelMetadata; end

        # Contains annotation details specific to Tables.
        # @!attribute [rw] score
        #   @return [Float]
        #     Output only. A confidence estimate between 0.0 and 1.0, inclusive. A higher
        #     value means greater confidence in the returned value.
        #     For
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#target_column_spec target_column_spec}
        #     of FLOAT64 data type the score is not populated.
        # @!attribute [rw] prediction_interval
        #   @return [Google::Cloud::AutoML::V1beta1::DoubleRange]
        #     Output only. Only populated when
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#target_column_spec target_column_spec}
        #     has FLOAT64 data type. An interval in which the exactly correct target
        #     value has 95% chance to be in.
        # @!attribute [rw] value
        #   @return [Google::Protobuf::Value]
        #     The predicted value of the row's
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#target_column_spec target_column}.
        #     The value depends on the column's DataType:
        #
        #     * CATEGORY - the predicted (with the above confidence `score`) CATEGORY
        #       value.
        #
        #     * FLOAT64 - the predicted (with above `prediction_interval`) FLOAT64 value.
        # @!attribute [rw] tables_model_column_info
        #   @return [Array<Google::Cloud::AutoML::V1beta1::TablesModelColumnInfo>]
        #     Output only. Auxiliary information for each of the model's
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelMetadata#input_feature_column_specs input_feature_column_specs}
        #     with respect to this particular prediction.
        #     If no other fields than
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelColumnInfo#column_spec_name column_spec_name}
        #     and
        #
        #     {Google::Cloud::AutoML::V1beta1::TablesModelColumnInfo#column_display_name column_display_name}
        #     would be populated, then this whole field is not.
        class TablesAnnotation; end

        # An information specific to given column and Tables Model, in context
        # of the Model and the predictions created by it.
        # @!attribute [rw] column_spec_name
        #   @return [String]
        #     Output only. The name of the ColumnSpec describing the column. Not
        #     populated when this proto is outputted to BigQuery.
        # @!attribute [rw] column_display_name
        #   @return [String]
        #     Output only. The display name of the column (same as the display_name of
        #     its ColumnSpec).
        # @!attribute [rw] feature_importance
        #   @return [Float]
        #     Output only. When given as part of a Model (always populated):
        #     Measurement of how much model predictions correctness on the TEST data
        #     depend on values in this column. A value between 0 and 1, higher means
        #     higher influence. These values are normalized - for all input feature
        #     columns of a given model they add to 1.
        #
        #     When given back by Predict (populated iff
        #     [feature_importance
        #     param][google.cloud.automl.v1beta1.PredictRequest.params] is set) or Batch
        #     Predict (populated iff
        #     {Google::Cloud::AutoML::V1beta1::PredictRequest#params feature_importance}
        #     param is set):
        #     Measurement of how impactful for the prediction returned for the given row
        #     the value in this column was. A value between 0 and 1, higher means larger
        #     impact. These values are normalized - for all input feature columns of a
        #     single predicted row they add to 1.
        class TablesModelColumnInfo; end
      end
    end
  end
end