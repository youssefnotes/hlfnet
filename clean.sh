#!/bin/bash
function main {
	echo "############################################################"
	echo "#################Shutting down containers###################"
	docker-compose --project-name art -f docker-compose-provenance.yaml down
	echo "############################################################"
	# todo remove docker images for chaincode
	echo "##Deleting directories:      ###############################"
	echo "==>artifacts/channels        ###############################"
	echo "==>artifacts/orderer         ###############################"
	echo "==>config/crypto-config      ###############################"
	echo "############################################################"
	rm -fdr artifacts/channels
	rm -fdr artifacts/orderer
	rm -fdr config/crypto-config
	rm -fdr logs
}
main