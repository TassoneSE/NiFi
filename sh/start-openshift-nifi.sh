#!/bin/sh -e
echo "####################################################################################"
echo "## Welcomes to a custom bash script to allow this image to run on OpenShift       ##"
echo "##                                                                                ##"
echo "## Please see: https://www.openshift.com/blog/a-guide-to-openshift-and-uids       ##"
echo "##             Under:TRADITIONAL APPLICATIONS AND UIDS                            ##"
echo "####################################################################################"

# If Enviroment Verable DEBUG=true
if $OS_DEBUG ; then
    echo "Gpomg to sleep for 1 hour"
    #sleep 60
    sleep 1h
fi

echo "kicking off NiFi's original ENTRYPOINT start.sh as user nifi"
su nifi bash -c '../scripts/start.sh'
