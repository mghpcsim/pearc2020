#!/bin/bash

TLDR_DIR=~/tmp/TLDR.$$
cd $TLDR_DIR

wget https://raw.githubusercontent.com/utdsimmons/pearc2020/master/ex1-cf.yml

aws cloudformation deploy --template-file ex1-cf.yml --capabilities CAPABILITY_IAM --stack-name ex1-TLDR --region us-east-1

