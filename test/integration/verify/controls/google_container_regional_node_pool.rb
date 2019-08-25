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

title 'Test GCP google_container_regional_node_pool resource.'

gcp_project_id = attribute(:gcp_project_id, default: 'gcp_project_id', description: 'The GCP project identifier.')
gcp_location = attribute(:gcp_location, default: 'gcp_location', description: 'The GCP project region.')
regional_node_pool = attribute('regional_node_pool', default: {
  "name": "inspec-gcp-regional-node-pool",
  "cluster_name": "inspec-gcp-regional-node-pool-cluster",
  "node_count": 1,
  "initial_node_count": 1
}, description: 'Regional Node Pool definition')
regional_cluster = attribute('regional_cluster', default: {
  "name": "inspec-gcp-regional-cluster",
  "initial_node_count": 1
}, description: 'Regional container cluster definition')
control 'google_container_regional_node_pool-1.0' do
  impact 1.0
  title 'google_container_regional_node_pool resource test'

  describe google_container_regional_node_pool(project: gcp_project_id, location: gcp_location, cluster: regional_cluster['name'], name: regional_node_pool['name']) do
    it { should exist }
    its('initial_node_count') { should eq regional_node_pool['initial_node_count']}
  end

  describe google_container_regional_node_pool(project: gcp_project_id, location: gcp_location, cluster: regional_cluster['name'], name: 'nonexistent') do
    it { should_not exist }
  end
end
