# Ambienti di esecuzione del corso di Architettura dei Sistemi Software 

Simone Luciano, Ilaria Lombardi, Dalia Valeriani, Serena Bencivenga

I dati comuni con presenti nel file config. 

Configurazione: 

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

Per consumare il servizio ejb (utilizzando appclient.sh) :
#/opt/wildfly/bin/appclient.sh --ejb-client-properties=jboss-ejb-client.properties target/ejb-remote-client-jar-with-dependencies.jar

Restiamo a disposizione per qualsiasi tipo di informazione\chiarimento.



Environment:
# Client-server 

Questo ambiente di esecuzione è composto da due macchine virtuali: 
un **server** e un **client**. 

## Descrizione delle macchine virtuali 

### server

La macchina virtuale **server** 
è pensata per l'esecuzione di semplici applicazioni Java *lato server*, 
ed ha il seguente software: 

* Ubuntu 16.04 LTS a 64 bit (by Bento) 

* Oracle Java SDK 

* Maven

* Wildfly 10

Configurazione di rete 

* Indirizzo IP: 10.11.1.101 

* Porte pubblicate sull'host: nessuna 
  
### client

La macchina virtuale **client**  
è pensata per l'esecuzione di semplici applicazioni Java *lato client*, 
ed ha il seguente software: 

* Ubuntu 16.04 LTS a 64 bit (by Bento) 

* Oracle Java SDK 

* Maven

* Wildfly 10
  
Configurazione di rete 

* Indirizzo IP: 10.11.1.201 





