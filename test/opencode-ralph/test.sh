#!/bin/bash
cd $(dirname "$0")

source test-utils.sh

# Run common tests
checkCommon

# Template specific tests
check "node" node --version
check "opencode" opencode --version
check "ralph" ralph --help

# Report result
reportResults
