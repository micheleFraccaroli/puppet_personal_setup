class java {

	package {"default-jre":
		ensure => 'present',
    	}
    	->
    	exec {'add_webupdate8team_ppa':
		command => 'sudo add-apt-repository ppa:webupd8team/java',
    	}
    	->
    	exec {'update':
    		command => 'sudo apt-get update',
	}
	->
	exec {'installing_oracle_jdk':
		command => 'sudo apt-get install oracle-java8-installer'
	}
	
}
