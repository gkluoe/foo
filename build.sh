#!/bin/bash

# Make a package versioned with the current tag

tag=${1}

[ -x "${tag}" ] && echo "Please specify a valid tag" && exit 1 

git checkout tags/${tag} && pkgbuild --nopayload --id=org.myorg.pkg1 --scripts=scripts mypackage-${tag}.pkg
