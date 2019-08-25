# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

title 'Test GCP google_compute_target_http_proxy resource.'

gcp_project_id = attribute(:gcp_project_id, default: 'gcp_project_id', description: 'The GCP project identifier.')
http_proxy = attribute('http_proxy', default: {
  "name": "inspec-gcp-http-proxy",
  "description": "A HTTP proxy"
}, description: 'Compute HTTP proxy definition')
control 'google_compute_target_http_proxy-1.0' do
  impact 1.0
  title 'google_compute_target_http_proxy resource test'

  describe google_compute_target_http_proxy(project: gcp_project_id, name: http_proxy['name']) do
    it { should exist }
    its('description') { should eq http_proxy['description'] }
    its('url_map') { should  match /\/inspec-gcp-url-map$/ }
  end

  describe google_compute_target_http_proxy(project: gcp_project_id, name: 'nonexistent') do
    it { should_not exist }
  end
end
