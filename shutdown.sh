#!/bin/bash
function main {
	echo "############################################################"
	echo "#################Shutting down containers###################"
	echo "############################################################"
	docker-compose --project-name art -f docker-compose-provenance.yaml down
	echo "############################################################"
	echo "##Deleting directories : artifacts, config/crypto-config###"
	echo "############################################################"
	rm -fdr artifacts
	rm -fdr config/crypto-config
	rm -fdr logs
}
main