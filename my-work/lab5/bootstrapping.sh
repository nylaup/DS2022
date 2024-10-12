#!/bin/bash

/usr/bin/apt update -y
/usr/bin/apt upgrade -y
/usr/bin/apt install -y git
/usr/bin/apt install -y python3
/usr/bin/python3 -m pip install boto3
