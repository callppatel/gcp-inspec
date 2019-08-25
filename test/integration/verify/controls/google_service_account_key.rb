title 'Service Accounts Properties'

gcp_project_id = attribute(:gcp_project_id, default: '', description: 'The GCP project identifier.')
gcp_service_account_display_name = attribute(:gcp_service_account_display_name, default: '', description: 'The GCP IAM Service Account display name.')
gcp_enable_privileged_resources = attribute(:gcp_enable_privileged_resources,default:0,description:'Flag to enable privileged resources requiring elevated privileges in GCP.')

control 'gcp-service-account-key-1.0' do

  only_if { gcp_enable_privileged_resources.to_i == 1 }
  impact 1.0
  title 'Ensure service account keys have the correct properties in bulk'

  google_service_account_keys(service_account: "projects/#{gcp_project_id}/serviceAccounts/#{gcp_service_account_display_name}@#{gcp_project_id}.iam.gserviceaccount.com").key_names.each do |sa_key_name|
    describe google_service_account_key(name: sa_key_name) do
      it { should exist }
      its('key_algorithm') { should eq "KEY_ALG_RSA_2048" }
    end
  end

end