#!/bin/sh

#
# C O N S T A N T S
#


#
# M A I N
#
while true
do
	echo
	echo
	echo
	echo
	echo
	echo "###########################################################################"
	echo
	echo "To get into this Golang docker container, (in another terminal window)"
	echo "run the command:"
	echo
	echo "    sudo docker exec -it ${DOCKER_CONTAINER_NAME} /bin/bash"
	echo
	echo "And then, once you are in the container, run something like:"
	echo
	echo "    cd ${DOCKER_APP_PROJECT_DIRECTORY}/src/<YOUR_PROJECT_DIRNAME> && gopherjs build"
	echo
	echo "---------------------------------------------------------------------------"
	echo
	echo "You could press [CTRL]+[C] to stop this container from running..."
	echo
	echo "["`date -R`"] and all's well."
	sleep 60
done
