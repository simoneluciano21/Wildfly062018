#Scripts 
Scripts utilizzati nel vagrantfile.


#Server
Java 8
        node.vm.provision :shell, path: "../_shared/scripts/setup-java.sh"
Wildfly 10
  		node.vm.provision :shell, path: "../_shared/scripts/setup-wildfly.sh"
Maven
		node.vm.provision :shell, path: "../_shared/scripts/setup-maven.sh"	
Aggiunta di un admin e di un user
		node.vm.provision :shell, path: "../_shared/scripts/add-usersSL.sh"	#SL use this sh on server, vagrant ssh server 
Start up di wildfly using standalone.sh
		node.vm.provision :shell, path: "../_shared/scripts/startup-wildfly.sh" #SL use this sh on server, vagrant ssh server	
		
#Client
Java 8
		node.vm.provision :shell, path: "../_shared/scripts/setup-java.sh"
Wildfly 10		
		node.vm.provision :shell, path: "../_shared/scripts/setup-wildfly.sh"
Maven
		node.vm.provision :shell, path: "../_shared/scripts/setup-maven.sh"	
Deploy sul server (EJB con un contatore stateless e un contatore statefull) 
		node.vm.provision :shell, path: "../_shared/scripts/deploy-ejb-remoteSL.sh"	#SL use this sh on client, vagrant ssh client it deploy the ejb on the server and run the appclient.sh to call the server

Per consumare il servizio ejb:
#/opt/wildfly/bin/appclient.sh --ejb-client-properties=jboss-ejb-client.properties target/ejb-remote-client-jar-with-dependencies.jar