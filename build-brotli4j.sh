#!/usr/local/bin/bash

# variables
export JAVA_HOME="/home/woodhamc/template-aarch64-jdk17u/build/bsd-aarch64-template-aarch64-release/images/jdk"
export MAVEN_OPTS="-Xint -XX:-UseCompressedClassPointers -XX:-UseCompressedOops -Xms4G -Xmx4G -XX:+UseSerialGC"


cd /home/woodhamc/Brotli4j

mvn clean package