#!/bin/bash

TOPIC_NAME='my-topic'

aws sns create-topic --name ${TOPIC_NAME}