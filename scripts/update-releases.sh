#!/usr/bin/env bash
set -euo pipefail

root=${ROOT:-$(git rev-parse --show-toplevel)}
api=(curl --fail --silent --show-error --location)
if [[ -n ${GITHUB_TOKEN:-} ]]
then
  api+=(--header "Authorization: Bearer ${GITHUB_TOKEN}")
fi

release() {
  "${api[@]}" "https://api.github.com/repos/${1}/releases/latest"
}

checksum() {
  "${api[@]}" "${1}" | shasum -a 256 | cut -d ' ' -f 1
}

cryobank_release=$(release mxcl/git-cryobank)
cryobank_tag=$(jq -r '.tag_name' <<<"${cryobank_release}")
cryobank_url="https://github.com/mxcl/git-cryobank/archive/refs/tags/${cryobank_tag}.tar.gz"
cryobank_sha=$(checksum "${cryobank_url}")
perl -0pi -e "s#url \"https://github.com/mxcl/git-cryobank/archive/refs/tags/[^\"]+\"\n  sha256 \"[^\"]+\"#url \"${cryobank_url}\"\n  sha256 \"${cryobank_sha}\"#" "${root}/git-cryobank.rb"

swift_release=$(release mxcl/swift-sh)
swift_version=$(jq -r '.tag_name | sub("^v"; "")' <<<"${swift_release}")
swift_url="https://github.com/mxcl/swift-sh/archive/refs/tags/${swift_version}.tar.gz"
swift_sha=$(checksum "${swift_url}")
perl -0pi -e "s#url \"https://github.com/mxcl/swift-sh/archive/refs/tags/[^\"]+\"\n  sha256 \"[^\"]+\"#url \"${swift_url}\"\n  sha256 \"${swift_sha}\"#" "${root}/swift-sh.rb"

pmm_release=$(release mxcl/package-manager-manager)
pmm_version=$(jq -r '.tag_name | sub("^v"; "")' <<<"${pmm_release}")
pmm_url=$(jq -r --arg version "${pmm_version}" '.assets[] | select(.name == "package-manager-manager-\($version).dmg") | .browser_download_url' <<<"${pmm_release}")
[[ -n ${pmm_url} ]]
pmm_sha=$(checksum "${pmm_url}")
perl -0pi -e "s/version \"[^\"]+\"\n  sha256 \"[^\"]+\"/version \"${pmm_version}\"\n  sha256 \"${pmm_sha}\"/" "${root}/Casks/package-manager-manager.rb"
