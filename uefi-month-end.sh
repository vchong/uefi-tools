#!/bin/bash
################################################################################
# Month End
#
# At the end of the month, we:
#
# 1) Merge the current monthly branch to the release branch
# 2) Tag the release branch with linaro-uef-YYYY.MM
################################################################################


################################################################################
source uefi-common
################################################################################

echo "--------------------------------------------------------------------------------"
echo "Updating linaro-release"
echo "--------------------------------------------------------------------------------"
force_update_branch $(uefi_next_current_month_branch) linaro-release
git tag $(uefi_next_release_tag)

