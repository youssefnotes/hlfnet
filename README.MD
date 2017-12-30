# HyperledgerProjects

The repository contains sample POC for different Hyperledger Fabric Components

- Create a Network > Assume, we have two organisations Org1 and Org2. Each organisation runs two peers in the network.
- Create certificates using cryptogen.
- Create a basic network using Docker Compose.
- Add a channel mainchannel for Org1 and Org2 to your network.
- Write a chaincode for a simple asset transfer and deploy it.
- Give your asset at least two properties and use JSON to serialise it in the blockchain
- Write a query function to prove asset transfers
- Kafka
- TLS
- Certificate Authority

>*Comments are added to docker-compose for envirnoment variable explanation*

To generate crypto materials and related artifacts (channels,genesis.block,anchor peers) for first time refer to 
`execute ./artprovenenace/setup.sh` 
*consider executing the commands manually,script still work in progress*