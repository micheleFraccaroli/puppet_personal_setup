class sublime {

	exec {'add_ppa_subl_3':
		command => 'sudo add-apt-repository ppa:webupd8team/sublime-text-3',
	}
	->
	exec {'update_ppa':
		command => 'sudo apt-get update',
	}
	->
	exec {'install_subl_3':
		command => 'sudo apt-get install sublime-text',
	}

}
