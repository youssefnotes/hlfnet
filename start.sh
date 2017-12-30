#!/bin/bash

function main {

	
		# Todo: save output of compose as log
		docker-compose --project-name art -f docker-compose-provenance.yaml start
		# sleep 10
		
		# docker exec cli0.egyptianmuseum.org bash -c 'cd channels && peer channel create -c mainchannel -f MainChannel.tx -o orderer.art.ifar.org:7050'
		
		# docker exec cli0.egyptianmuseum.org bash -c 'cd channels && peer channel join -b mainchannel.block'
		# docker exec cli0.egyptianmuseum.org bash -c 'cd channels && peer channel update -o orderer.art.ifar.org:7050 -c mainchannel -f EGArtMSPanchors.tx'
		# docker exec cli0.louvre.fr bash -c 'cd channels && peer channel join -b mainchannel.block'
		# docker exec cli0.louvre.fr bash -c 'cd channels && peer channel update -o orderer.art.ifar.org:7050 -c mainchannel -f FRArtMSPanchors.tx'

}

main | tee logs/setup.log