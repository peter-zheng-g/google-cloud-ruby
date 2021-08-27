# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/kms/v1/resources_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/kms/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.kms.v1.ListKeyRingsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.kms.v1.ListCryptoKeysRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :version_view, :enum, 4, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionView"
      optional :filter, :string, 5
      optional :order_by, :string, 6
    end
    add_message "google.cloud.kms.v1.ListCryptoKeyVersionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :view, :enum, 4, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionView"
      optional :filter, :string, 5
      optional :order_by, :string, 6
    end
    add_message "google.cloud.kms.v1.ListImportJobsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.kms.v1.ListKeyRingsResponse" do
      repeated :key_rings, :message, 1, "google.cloud.kms.v1.KeyRing"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.cloud.kms.v1.ListCryptoKeysResponse" do
      repeated :crypto_keys, :message, 1, "google.cloud.kms.v1.CryptoKey"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.cloud.kms.v1.ListCryptoKeyVersionsResponse" do
      repeated :crypto_key_versions, :message, 1, "google.cloud.kms.v1.CryptoKeyVersion"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.cloud.kms.v1.ListImportJobsResponse" do
      repeated :import_jobs, :message, 1, "google.cloud.kms.v1.ImportJob"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.cloud.kms.v1.GetKeyRingRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.GetCryptoKeyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.GetCryptoKeyVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.GetPublicKeyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.GetImportJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.CreateKeyRingRequest" do
      optional :parent, :string, 1
      optional :key_ring_id, :string, 2
      optional :key_ring, :message, 3, "google.cloud.kms.v1.KeyRing"
    end
    add_message "google.cloud.kms.v1.CreateCryptoKeyRequest" do
      optional :parent, :string, 1
      optional :crypto_key_id, :string, 2
      optional :crypto_key, :message, 3, "google.cloud.kms.v1.CryptoKey"
      optional :skip_initial_version_creation, :bool, 5
    end
    add_message "google.cloud.kms.v1.CreateCryptoKeyVersionRequest" do
      optional :parent, :string, 1
      optional :crypto_key_version, :message, 2, "google.cloud.kms.v1.CryptoKeyVersion"
    end
    add_message "google.cloud.kms.v1.ImportCryptoKeyVersionRequest" do
      optional :parent, :string, 1
      optional :algorithm, :enum, 2, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithm"
      optional :import_job, :string, 4
      oneof :wrapped_key_material do
        optional :rsa_aes_wrapped_key, :bytes, 5
      end
    end
    add_message "google.cloud.kms.v1.CreateImportJobRequest" do
      optional :parent, :string, 1
      optional :import_job_id, :string, 2
      optional :import_job, :message, 3, "google.cloud.kms.v1.ImportJob"
    end
    add_message "google.cloud.kms.v1.UpdateCryptoKeyRequest" do
      optional :crypto_key, :message, 1, "google.cloud.kms.v1.CryptoKey"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.kms.v1.UpdateCryptoKeyVersionRequest" do
      optional :crypto_key_version, :message, 1, "google.cloud.kms.v1.CryptoKeyVersion"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.kms.v1.UpdateCryptoKeyPrimaryVersionRequest" do
      optional :name, :string, 1
      optional :crypto_key_version_id, :string, 2
    end
    add_message "google.cloud.kms.v1.DestroyCryptoKeyVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.RestoreCryptoKeyVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.v1.EncryptRequest" do
      optional :name, :string, 1
      optional :plaintext, :bytes, 2
      optional :additional_authenticated_data, :bytes, 3
      optional :plaintext_crc32c, :message, 7, "google.protobuf.Int64Value"
      optional :additional_authenticated_data_crc32c, :message, 8, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.DecryptRequest" do
      optional :name, :string, 1
      optional :ciphertext, :bytes, 2
      optional :additional_authenticated_data, :bytes, 3
      optional :ciphertext_crc32c, :message, 5, "google.protobuf.Int64Value"
      optional :additional_authenticated_data_crc32c, :message, 6, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.AsymmetricSignRequest" do
      optional :name, :string, 1
      optional :digest, :message, 3, "google.cloud.kms.v1.Digest"
      optional :digest_crc32c, :message, 4, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.AsymmetricDecryptRequest" do
      optional :name, :string, 1
      optional :ciphertext, :bytes, 3
      optional :ciphertext_crc32c, :message, 4, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.MacSignRequest" do
      optional :name, :string, 1
      optional :data, :bytes, 2
      optional :data_crc32c, :message, 3, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.MacVerifyRequest" do
      optional :name, :string, 1
      optional :data, :bytes, 2
      optional :data_crc32c, :message, 3, "google.protobuf.Int64Value"
      optional :mac, :bytes, 4
      optional :mac_crc32c, :message, 5, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.GenerateRandomBytesRequest" do
      optional :location, :string, 1
      optional :length_bytes, :int32, 2
      optional :protection_level, :enum, 3, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.EncryptResponse" do
      optional :name, :string, 1
      optional :ciphertext, :bytes, 2
      optional :ciphertext_crc32c, :message, 4, "google.protobuf.Int64Value"
      optional :verified_plaintext_crc32c, :bool, 5
      optional :verified_additional_authenticated_data_crc32c, :bool, 6
      optional :protection_level, :enum, 7, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.DecryptResponse" do
      optional :plaintext, :bytes, 1
      optional :plaintext_crc32c, :message, 2, "google.protobuf.Int64Value"
      optional :used_primary, :bool, 3
      optional :protection_level, :enum, 4, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.AsymmetricSignResponse" do
      optional :signature, :bytes, 1
      optional :signature_crc32c, :message, 2, "google.protobuf.Int64Value"
      optional :verified_digest_crc32c, :bool, 3
      optional :name, :string, 4
      optional :protection_level, :enum, 6, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.AsymmetricDecryptResponse" do
      optional :plaintext, :bytes, 1
      optional :plaintext_crc32c, :message, 2, "google.protobuf.Int64Value"
      optional :verified_ciphertext_crc32c, :bool, 3
      optional :protection_level, :enum, 4, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.MacSignResponse" do
      optional :name, :string, 1
      optional :mac, :bytes, 2
      optional :mac_crc32c, :message, 3, "google.protobuf.Int64Value"
      optional :verified_data_crc32c, :bool, 4
      optional :protection_level, :enum, 5, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.MacVerifyResponse" do
      optional :name, :string, 1
      optional :success, :bool, 2
      optional :verified_data_crc32c, :bool, 3
      optional :verified_mac_crc32c, :bool, 4
      optional :verified_success_integrity, :bool, 5
      optional :protection_level, :enum, 6, "google.cloud.kms.v1.ProtectionLevel"
    end
    add_message "google.cloud.kms.v1.GenerateRandomBytesResponse" do
      optional :data, :bytes, 1
      optional :data_crc32c, :message, 3, "google.protobuf.Int64Value"
    end
    add_message "google.cloud.kms.v1.Digest" do
      oneof :digest do
        optional :sha256, :bytes, 1
        optional :sha384, :bytes, 2
        optional :sha512, :bytes, 3
      end
    end
    add_message "google.cloud.kms.v1.LocationMetadata" do
      optional :hsm_available, :bool, 1
      optional :ekm_available, :bool, 2
    end
  end
end

module Google
  module Cloud
    module Kms
      module V1
        ListKeyRingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListKeyRingsRequest").msgclass
        ListCryptoKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeysRequest").msgclass
        ListCryptoKeyVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeyVersionsRequest").msgclass
        ListImportJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListImportJobsRequest").msgclass
        ListKeyRingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListKeyRingsResponse").msgclass
        ListCryptoKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeysResponse").msgclass
        ListCryptoKeyVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeyVersionsResponse").msgclass
        ListImportJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListImportJobsResponse").msgclass
        GetKeyRingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetKeyRingRequest").msgclass
        GetCryptoKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetCryptoKeyRequest").msgclass
        GetCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetCryptoKeyVersionRequest").msgclass
        GetPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetPublicKeyRequest").msgclass
        GetImportJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetImportJobRequest").msgclass
        CreateKeyRingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateKeyRingRequest").msgclass
        CreateCryptoKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateCryptoKeyRequest").msgclass
        CreateCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateCryptoKeyVersionRequest").msgclass
        ImportCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ImportCryptoKeyVersionRequest").msgclass
        CreateImportJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateImportJobRequest").msgclass
        UpdateCryptoKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.UpdateCryptoKeyRequest").msgclass
        UpdateCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.UpdateCryptoKeyVersionRequest").msgclass
        UpdateCryptoKeyPrimaryVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.UpdateCryptoKeyPrimaryVersionRequest").msgclass
        DestroyCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.DestroyCryptoKeyVersionRequest").msgclass
        RestoreCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.RestoreCryptoKeyVersionRequest").msgclass
        EncryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.EncryptRequest").msgclass
        DecryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.DecryptRequest").msgclass
        AsymmetricSignRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricSignRequest").msgclass
        AsymmetricDecryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricDecryptRequest").msgclass
        MacSignRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacSignRequest").msgclass
        MacVerifyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacVerifyRequest").msgclass
        GenerateRandomBytesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GenerateRandomBytesRequest").msgclass
        EncryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.EncryptResponse").msgclass
        DecryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.DecryptResponse").msgclass
        AsymmetricSignResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricSignResponse").msgclass
        AsymmetricDecryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricDecryptResponse").msgclass
        MacSignResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacSignResponse").msgclass
        MacVerifyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacVerifyResponse").msgclass
        GenerateRandomBytesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GenerateRandomBytesResponse").msgclass
        Digest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.Digest").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.LocationMetadata").msgclass
      end
    end
  end
end
