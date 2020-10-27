#!/bin/sh
export TargetUsername=$(whoami)
export EphemeralDrive="/dev/nvme1n1"
export EphemeralMount="/mnt"
sudo mkfs.ext4 $EphemeralDrive
sudo mount $EphemeralDrive $EphemeralMount
sudo chown -R $TargetUsername $EphemeralMount
export EphemeralGit="$EphemeralMount/git"
mkdir -p $EphemeralGit
cp -r $PWD $EphemeralGit/clx
pip install docker-compose
docker-compose up
