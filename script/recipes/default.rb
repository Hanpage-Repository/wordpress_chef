bash "install_whatap" do
	user "root"
	cwd "#{Chef::Config[:file_cache_path]}"
	code <<-EOH
		wget http://repo.whatap.io/debian/release.gpg -O -|sudo apt-key add -
		wget http://repo.whatap.io/debian/whatap-repo_1.0_all.deb
		dpkg -i whatap-repo_1.0_all.deb
		apt-get update
		apt-get install whatap-agent
		env PATH=$PATH whatap N8PTDY2LJJH088RWI5U7
		apt-get install mailutils
	EOH
end
