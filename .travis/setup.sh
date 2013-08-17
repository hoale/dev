#!/bin/bash

#setup travis-ci configuration basing one the being-built branch

if [[ $TRAVIS_BRANCH == 'master' ]] ; then
    export DEPLOY_HTML_DIR=docs/0.1.0
else
    if [[ $TRAVIS_BRANCH == 'develop' ]] ; then
        export DEPLOY_HTML_DIR=docs/develop
    fi
fi
