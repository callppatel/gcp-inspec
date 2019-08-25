---
title: About the google_storage_object_acl Resource
platform: gcp
---

# google\_storage\_object\_acl

Use the `google_storage_object_acl` InSpec audit resource to test properties of a single GCP storage object ACL.  See the [Google documentation for this here](https://cloud.google.com/storage/docs/access-control/lists) covering the possible values for 'entity' argument below.

<br>

## Syntax

A `google_storage_object_acl` resource block declares the tests for a single GCP storage object ACL by bucket name, object name and entity.

    describe google_storage_object_acl(bucket: 'bucket-buvsjjcndqz', object: 'bucket-object-pmxbiikq', entity: 'user-object-viewer@spaterson-project.iam.gserviceaccount.com') do
      it { should exist }
    end

<br>

## Examples

The following examples show how to use this InSpec audit resource.

### Test that a GCP storage bucket ACL exists

    describe google_storage_object_acl(bucket: 'bucket-buvsjjcndqz', object: 'bucket-object-pmxbiikq', entity: 'user-object-viewer@spaterson-project.iam.gserviceaccount.com') do
      it { should exist }
    end

### Test that a GCP storage object ACL has the expected role (READER, WRITER or OWNER)

    describe google_storage_object_acl(bucket: 'bucket-buvsjjcndqz', object: 'bucket-object-pmxbiikq', entity: 'user-object-viewer@spaterson-project.iam.gserviceaccount.com') do
      its('role') { should eq 'OWNER' }
    end

<br>

## Properties

*  `bucket`, `email`, `entity`, `etag`, `generation`, `id`, `kind`, `object`, `role`

<br>


## GCP Permissions

Ensure the [Google Cloud Storage API](https://console.cloud.google.com/apis/api/storage-component.googleapis.com/) is enabled.