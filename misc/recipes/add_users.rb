user "deployer" do
  gid "www-data"
  home "/home/deployer"
  shell "/bin/bash"
end

#eventually need to make this more robust, it shouldn't be a command to do this
execute "add deployer as sudoer" do
  command "usermod -a -G sudo deployer"
end
