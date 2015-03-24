deploy_key "github_key" do
  provider Chef::Provider::DeployKeyGithub
  path '/home/deployer/.ssh'
  credentials({
    user: node[:github][:user]
    password: node[:github][:password]
  })
  repo 'jeronpaul/capshare'
  owner 'deployer'
  group 'www-data'
  mode 00640
  action :add
end
