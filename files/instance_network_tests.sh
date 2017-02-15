#!/bin/sh
# This script will do connection tests

if ! type curl >/dev/null
then
	echo "Curl not found, it is needed for the download test" >&2
	return 1
fi

time -p curl -sO "http://bio.nic.funet.fi/pub/sci/molbio/chipster/example_data/gb/annotations/Homo_sapiens.NCBI36.54_seq.tsv"
time -p curl -sO "http://vault.centos.org/6.7/isos/x86_64/CentOS-6.7-x86_64-LiveDVD.iso"
