class chrome {

	exec {'add_key':
		command => 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -',
	}
	->
	exec {'set_repo':
		command => 'echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list',
	}
	->
	exec {'update':
		command => 'sudo apt-get update',
	}
	->
	exec {'install':
		command => 'sudo apt-get install google-chrome-stable',
	}

}
