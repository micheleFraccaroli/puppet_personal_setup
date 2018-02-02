class git {
	
	exec {'install_git':
		command => 'sudo apt-get install git',
	}
	
}
