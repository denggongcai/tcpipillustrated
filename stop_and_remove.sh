#!/bin/bash

docker stop aix  && docker rm aix 
docker stop solaris  && docker rm solaris 
docker stop gemini  && docker rm gemini 
docker stop gateway  && docker rm gateway 
docker stop netb  && docker rm netb 
docker stop sun  && docker rm sun 
docker stop svr4  && docker rm svr4 
docker stop bsdi  && docker rm bsdi 
docker stop slip  && docker rm slip 