#!/bin/bash

ps -ef | grep [o]cr8100 | awk '{print $2}' | xargs kill -9
